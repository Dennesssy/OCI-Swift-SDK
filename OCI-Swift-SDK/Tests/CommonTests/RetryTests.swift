import XCTest
import Foundation
@testable import OCICommon

/// Records calls and replays scripted outcomes.
final class StubHTTP: HTTPClient, @unchecked Sendable {
    enum Outcome { case response(Int, String, [String: String]); case failure(Error) }
    private let lock = NSLock()
    private var outcomes: [Outcome]
    private(set) var requests: [OCIRequest] = []
    init(_ o: [Outcome]) { outcomes = o }

    func send(_ req: OCIRequest, host: String) async throws -> (Data, HTTPURLResponse) {
        let o: Outcome = lock.withLock { requests.append(req); return outcomes.removeFirst() }
        switch o {
        case .failure(let e): throw e
        case .response(let s, let body, let h):
            return (Data(body.utf8), HTTPURLResponse(url: URL(string: "https://\(host)")!, statusCode: s, httpVersion: nil, headerFields: h)!)
        }
    }
}

final class SleepRecorder: @unchecked Sendable {
    private let lock = NSLock(); private(set) var delays: [TimeInterval] = []
    func record(_ d: TimeInterval) { lock.withLock { delays.append(d) } }
}

final class RetryTests: XCTestCase {
    struct Thing: Decodable, Equatable { let id: String }

    func client(_ http: StubHTTP, _ rec: SleepRecorder, policy: RetryPolicy = RetryPolicy(maxAttempts: 4, baseDelay: 1, maxDelay: 30, jitter: 0)) throws -> BaseClient {
        let signer = try APIKeySigner(tenancy: "t", user: "u", fingerprint: "f", privateKeyPEM: Fixtures.pkcs1PEM)
        return BaseClient(host: "h.example.com", signer: signer, http: http, retry: policy, sleep: { rec.record($0) })
    }
    let req = OCIRequest(method: "GET", path: "/things/1")

    func testSuccessDecodesAndSendsSignedRequest() async throws {
        let http = StubHTTP([.response(200, #"{"id":"abc"}"#, [:])])
        let rec = SleepRecorder()
        let t = try await client(http, rec).call(req, as: Thing.self)
        XCTAssertEqual(t, Thing(id: "abc"))
        XCTAssertTrue(rec.delays.isEmpty)
        let sent = http.requests[0]
        XCTAssertTrue(sent.headers["authorization"]?.hasPrefix("Signature version=\"1\"") == true)
        XCTAssertNotNil(sent.headers["date"])
        XCTAssertEqual(sent.headers["host"], "h.example.com")
    }

    func testRetriesOn429And5xxWithExponentialBackoffThenSucceeds() async throws {
        let http = StubHTTP([.response(429, "{}", [:]), .response(503, "{}", [:]), .response(500, "{}", [:]), .response(200, #"{"id":"z"}"#, [:])])
        let rec = SleepRecorder()
        let t = try await client(http, rec).call(req, as: Thing.self)
        XCTAssertEqual(t.id, "z")
        XCTAssertEqual(http.requests.count, 4)
        XCTAssertEqual(rec.delays, [1, 2, 4])
    }

    func testHonorsRetryAfter() async throws {
        let http = StubHTTP([.response(429, "{}", ["Retry-After": "9"]), .response(200, #"{"id":"z"}"#, [:])])
        let rec = SleepRecorder()
        _ = try await client(http, rec).call(req, as: Thing.self)
        XCTAssertEqual(rec.delays, [9])
    }

    func testGivesUpAfterMaxAttemptsWithParsedError() async throws {
        let body = #"{"code":"TooManyRequests","message":"slow down"}"#
        let http = StubHTTP(Array(repeating: .response(429, body, ["opc-request-id": "R1"]), count: 3))
        let rec = SleepRecorder()
        do {
            _ = try await client(http, rec, policy: RetryPolicy(maxAttempts: 3, baseDelay: 1, maxDelay: 30, jitter: 0)).call(req, as: Thing.self)
            XCTFail("expected throw")
        } catch let e as OCIError {
            XCTAssertEqual(e.statusCode, 429); XCTAssertEqual(e.code, "TooManyRequests"); XCTAssertEqual(e.opcRequestId, "R1")
        }
        XCTAssertEqual(http.requests.count, 3)
        XCTAssertEqual(rec.delays.count, 2)
    }

    func testDoesNotRetryClientErrors() async throws {
        let http = StubHTTP([.response(404, #"{"code":"NotFound","message":"nope"}"#, [:])])
        let rec = SleepRecorder()
        do { _ = try await client(http, rec).call(req, as: Thing.self); XCTFail() }
        catch let e as OCIError { XCTAssertEqual(e.code, "NotFound") }
        XCTAssertEqual(http.requests.count, 1)
        XCTAssertTrue(rec.delays.isEmpty)
    }

    func testRetriesNetworkErrorsButNotOthers() async throws {
        let http = StubHTTP([.failure(URLError(.networkConnectionLost)), .response(200, #"{"id":"n"}"#, [:])])
        let rec = SleepRecorder()
        let t = try await client(http, rec).call(req, as: Thing.self)
        XCTAssertEqual(t.id, "n"); XCTAssertEqual(rec.delays, [1])

        let http2 = StubHTTP([.failure(URLError(.badURL))])
        do { _ = try await client(http2, SleepRecorder()).call(req, as: Thing.self); XCTFail() }
        catch let e as URLError { XCTAssertEqual(e.code, .badURL) }
        XCTAssertEqual(http2.requests.count, 1)
    }

    func testEachAttemptIsResigned() async throws {
        let http = StubHTTP([.response(500, "{}", [:]), .response(200, #"{"id":"s"}"#, [:])])
        _ = try await client(http, SleepRecorder()).call(req, as: Thing.self)
        XCTAssertNotNil(http.requests[0].headers["authorization"])
        XCTAssertNotNil(http.requests[1].headers["authorization"])
    }

    func testEmptyBodyDecodesToEmptyResponse() async throws {
        let http = StubHTTP([.response(204, "", [:])])
        _ = try await client(http, SleepRecorder()).call(OCIRequest(method: "DELETE", path: "/x"), as: EmptyResponse.self)
    }

    func testCallRawReturnsUndecodedBodyAndResponseHeaders() async throws {
        let http = StubHTTP([.response(500, "{}", [:]),
                             .response(200, "not json at all", ["opc-next-page": "tok2", "etag": "e1", "opc-request-id": "R9"])])
        let rec = SleepRecorder()
        let (data, resp) = try await client(http, rec).callRaw(OCIRequest(method: "GET", path: "/20190901/configuration", query: ["limit": "5"]))
        XCTAssertEqual(String(data: data, encoding: .utf8), "not json at all")
        XCTAssertEqual(resp.value(forHTTPHeaderField: "opc-next-page"), "tok2")
        XCTAssertEqual(resp.value(forHTTPHeaderField: "etag"), "e1")
        XCTAssertEqual(resp.value(forHTTPHeaderField: "opc-request-id"), "R9")
        XCTAssertEqual(http.requests.count, 2)          // retried once via callRaw
        XCTAssertEqual(http.requests[1].path, "/20190901/configuration") // path not prefixed
    }

    func testCallRawThrowsParsedOCIError() async throws {
        let http = StubHTTP([.response(400, #"{"code":"InvalidParameter","message":"bad"}"#, ["opc-request-id": "R2"])])
        do { _ = try await client(http, SleepRecorder()).callRaw(req); XCTFail() }
        catch let e as OCIError { XCTAssertEqual(e.code, "InvalidParameter"); XCTAssertEqual(e.opcRequestId, "R2") }
    }
}
