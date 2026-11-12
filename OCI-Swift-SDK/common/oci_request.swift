import Foundation

/// A transport-agnostic OCI REST request. `path` must already be percent-encoded;
/// `query` values are encoded by `encodedQuery`.
public struct OCIRequest: Sendable {
    public var method: String
    public var path: String
    public var query: [String: String]
    public var headers: [String: String]
    public var body: Data?

    public init(method: String, path: String, query: [String: String] = [:], headers: [String: String] = [:], body: Data? = nil) {
        self.method = method
        self.path = path
        self.query = query
        self.headers = headers
        self.body = body
    }

    /// RFC 3986 unreserved characters only; everything else is percent-encoded (space becomes %20).
    static func encodeQueryComponent(_ s: String) -> String {
        var allowed = CharacterSet.alphanumerics
        allowed.insert(charactersIn: "-._~")
        return s.addingPercentEncoding(withAllowedCharacters: allowed) ?? s
    }

    /// Query string with keys sorted, so signing and sending use identical bytes.
    public var encodedQuery: String {
        query.keys.sorted().map { k in
            "\(Self.encodeQueryComponent(k))=\(Self.encodeQueryComponent(query[k] ?? ""))"
        }.joined(separator: "&")
    }

    /// Builds the absolute URL. Returns nil if host/path are malformed.
    public func url(host: String) -> URL? {
        var c = URLComponents()
        c.scheme = "https"
        c.host = host
        c.percentEncodedPath = path.hasPrefix("/") ? path : "/" + path
        let q = encodedQuery
        if !q.isEmpty { c.percentEncodedQuery = q }
        return c.url
    }
}

/// Error returned by the OCI service (JSON body `{code, message}`) or by the transport layer.
public struct OCIError: Error, Sendable, CustomStringConvertible, LocalizedError {
    public let statusCode: Int
    public let code: String
    public let message: String
    public let opcRequestId: String?

    public init(statusCode: Int, code: String, message: String, opcRequestId: String? = nil) {
        self.statusCode = statusCode
        self.code = code
        self.message = message
        self.opcRequestId = opcRequestId
    }

    /// Parses an error from a non-2xx response. Falls back to the raw body when it is not OCI JSON.
    public static func parse(data: Data, response: HTTPURLResponse) -> OCIError {
        struct Body: Decodable { let code: String?; let message: String? }
        let reqId = response.value(forHTTPHeaderField: "opc-request-id")
        if let b = try? JSONDecoder().decode(Body.self, from: data), b.code != nil || b.message != nil {
            return OCIError(statusCode: response.statusCode, code: b.code ?? "Unknown",
                            message: b.message ?? "", opcRequestId: reqId)
        }
        let text = String(data: data, encoding: .utf8) ?? ""
        return OCIError(statusCode: response.statusCode, code: "Unknown", message: text, opcRequestId: reqId)
    }

    public var description: String {
        "OCIError(status: \(statusCode), code: \(code), message: \(message), opc-request-id: \(opcRequestId ?? "none"))"
    }
    public var errorDescription: String? { description }
}
