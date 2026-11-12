import Foundation

public protocol HTTPClient: Sendable {
    /// Sends an already-signed request (signature headers are in `req.headers`) to `https://host`.
    func send(_ req: OCIRequest, host: String) async throws -> (Data, HTTPURLResponse)
}

/// URLSession-backed transport.
public struct URLSessionHTTPClient: HTTPClient {
    private let session: URLSession
    public init(session: URLSession = .shared) { self.session = session }

    public func send(_ req: OCIRequest, host: String) async throws -> (Data, HTTPURLResponse) {
        guard let url = req.url(host: host) else {
            throw OCIError(statusCode: 0, code: "InvalidRequest", message: "cannot build URL for host \(host) path \(req.path)")
        }
        var ur = URLRequest(url: url)
        ur.httpMethod = req.method
        for (k, v) in req.headers { ur.setValue(v, forHTTPHeaderField: k) }
        ur.httpBody = req.body
        let (data, resp) = try await session.data(for: ur)
        guard let http = resp as? HTTPURLResponse else {
            throw OCIError(statusCode: 0, code: "InvalidResponse", message: "non-HTTP response")
        }
        return (data, http)
    }
}

public struct RetryPolicy: Sendable {
    public var maxAttempts: Int
    public var baseDelay: TimeInterval
    public var maxDelay: TimeInterval
    /// Fraction of the computed delay randomly added (0 disables jitter).
    public var jitter: Double

    public init(maxAttempts: Int = 5, baseDelay: TimeInterval = 0.5, maxDelay: TimeInterval = 30, jitter: Double = 0.2) {
        self.maxAttempts = max(1, maxAttempts)
        self.baseDelay = baseDelay
        self.maxDelay = maxDelay
        self.jitter = jitter
    }
    public static let none = RetryPolicy(maxAttempts: 1)

    public func isRetriable(status: Int) -> Bool { status == 429 || (500...599).contains(status) }

    public func isRetriable(error: Error) -> Bool {
        guard let e = error as? URLError else { return false }
        switch e.code {
        case .timedOut, .networkConnectionLost, .cannotConnectToHost, .cannotFindHost,
             .dnsLookupFailed, .notConnectedToInternet: return true
        default: return false
        }
    }

    /// Delay before retry number `attempt` (1-based: delay after the first failure is attempt 1).
    public func delay(attempt: Int, retryAfter: TimeInterval?) -> TimeInterval {
        if let ra = retryAfter { return min(max(ra, 0), max(maxDelay, 120)) }
        let exp = min(baseDelay * pow(2, Double(attempt - 1)), maxDelay)
        return exp * (1 + jitter * Double.random(in: 0..<1))
    }

    /// Parses `Retry-After` as delta-seconds or an HTTP date.
    public static func parseRetryAfter(_ value: String?, now: Date = Date()) -> TimeInterval? {
        guard let v = value?.trimmingCharacters(in: .whitespaces), !v.isEmpty else { return nil }
        if let s = TimeInterval(v) { return s }
        let f = DateFormatter()
        f.locale = Locale(identifier: "en_US_POSIX")
        f.timeZone = TimeZone(identifier: "GMT")
        f.dateFormat = "EEE, dd MMM yyyy HH:mm:ss 'GMT'"
        return f.date(from: v).map { max(0, $0.timeIntervalSince(now)) }
    }
}

/// Decodable placeholder for operations with no response body.
public struct EmptyResponse: Decodable, Sendable { public init() {} }

public final class BaseClient: Sendable {
    public let host: String
    private let signer: Signer
    private let http: HTTPClient
    private let retry: RetryPolicy
    private let sleep: @Sendable (TimeInterval) async throws -> Void

    public init(host: String, signer: Signer, http: HTTPClient = URLSessionHTTPClient(),
                retry: RetryPolicy = RetryPolicy(),
                sleep: @escaping @Sendable (TimeInterval) async throws -> Void = { try await Task.sleep(nanoseconds: UInt64($0 * 1_000_000_000)) }) {
        self.host = host
        self.signer = signer
        self.http = http
        self.retry = retry
        self.sleep = sleep
    }

    static let decoder: JSONDecoder = {
        let d = JSONDecoder()
        d.dateDecodingStrategy = .custom { dec in
            let s = try dec.singleValueContainer().decode(String.self)
            let f = ISO8601DateFormatter()
            f.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
            if let date = f.date(from: s) { return date }
            f.formatOptions = [.withInternetDateTime]
            if let date = f.date(from: s) { return date }
            throw DecodingError.dataCorrupted(.init(codingPath: dec.codingPath, debugDescription: "bad date \(s)"))
        }
        return d
    }()

    /// Signs (fresh signature per attempt), sends, retries per policy, and returns the raw response.
    public func callRaw(_ req: OCIRequest) async throws -> (Data, HTTPURLResponse) {
        guard let url = req.url(host: host) else {
            throw OCIError(statusCode: 0, code: "InvalidRequest", message: "cannot build URL for \(host)\(req.path)")
        }
        var attempt = 0
        while true {
            attempt += 1
            var ur = URLRequest(url: url)
            ur.httpMethod = req.method
            for (k, v) in req.headers { ur.setValue(v, forHTTPHeaderField: k) }
            ur.httpBody = req.body
            try signer.sign(&ur)
            var signed = req
            signed.headers = Dictionary(uniqueKeysWithValues: (ur.allHTTPHeaderFields ?? [:]).map { ($0.key.lowercased(), $0.value) })

            do {
                let (data, resp) = try await http.send(signed, host: host)
                if (200..<300).contains(resp.statusCode) { return (data, resp) }
                let err = OCIError.parse(data: data, response: resp)
                guard retry.isRetriable(status: resp.statusCode), attempt < retry.maxAttempts else { throw err }
                let ra = RetryPolicy.parseRetryAfter(resp.value(forHTTPHeaderField: "Retry-After"))
                try await sleep(retry.delay(attempt: attempt, retryAfter: ra))
            } catch let e as OCIError {
                throw e
            } catch {
                guard retry.isRetriable(error: error), attempt < retry.maxAttempts else { throw error }
                try await sleep(retry.delay(attempt: attempt, retryAfter: nil))
            }
        }
    }

    public func call<T: Decodable>(_ req: OCIRequest, as: T.Type) async throws -> T {
        let (data, _) = try await callRaw(req)
        if data.isEmpty, let empty = try? Self.decoder.decode(T.self, from: Data("{}".utf8)) { return empty }
        return try Self.decoder.decode(T.self, from: data)
    }
}
