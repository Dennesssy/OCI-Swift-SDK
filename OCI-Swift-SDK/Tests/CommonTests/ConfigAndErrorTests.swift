import XCTest
import Foundation
@testable import OCICommon

final class ConfigTests: XCTestCase {
    let sample = """
    # comment
    [DEFAULT]
    user=ocid1.user.oc1..aaa
    fingerprint = 11:22:33
    tenancy=ocid1.tenancy.oc1..bbb
    region=us-ashburn-1
    key_file=~/.oci/key.pem

    [PROD]
    ; override
    region = eu-frankfurt-1
    key_file=/abs/prod.pem
    pass_phrase=secret
    user=ocid1.user.oc1..prod
    """

    func testDefaultProfile() throws {
        let c = try ConfigFileProvider(contents: sample)
        XCTAssertEqual(c.user, "ocid1.user.oc1..aaa")
        XCTAssertEqual(c.fingerprint, "11:22:33")
        XCTAssertEqual(c.tenancy, "ocid1.tenancy.oc1..bbb")
        XCTAssertEqual(c.region, "us-ashburn-1")
        XCTAssertEqual(c.keyFile, NSString(string: "~/.oci/key.pem").expandingTildeInPath)
        XCTAssertNil(c.passphrase)
    }

    func testNamedProfileOverridesAndInheritsDefault() throws {
        let c = try ConfigFileProvider(contents: sample, profile: "PROD")
        XCTAssertEqual(c.user, "ocid1.user.oc1..prod")
        XCTAssertEqual(c.region, "eu-frankfurt-1")
        XCTAssertEqual(c.keyFile, "/abs/prod.pem")
        XCTAssertEqual(c.passphrase, "secret")
        XCTAssertEqual(c.tenancy, "ocid1.tenancy.oc1..bbb") // inherited
    }

    func testMissingProfileAndField() {
        XCTAssertThrowsError(try ConfigFileProvider(contents: sample, profile: "NOPE")) {
            XCTAssertEqual($0 as? ConfigError, .profileNotFound("NOPE"))
        }
        XCTAssertThrowsError(try ConfigFileProvider(contents: "[DEFAULT]\nuser=u\n")) {
            XCTAssertEqual($0 as? ConfigError, .missingField(profile: "DEFAULT", field: "fingerprint"))
        }
    }

    func testMissingFile() {
        XCTAssertThrowsError(try ConfigFileProvider(path: "/nonexistent/oci/config")) {
            XCTAssertEqual($0 as? ConfigError, .fileNotFound("/nonexistent/oci/config"))
        }
    }

    func testFileRoundTripAndSignerFromProvider() throws {
        let dir = FileManager.default.temporaryDirectory.appendingPathComponent(UUID().uuidString)
        try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
        defer { try? FileManager.default.removeItem(at: dir) }
        let keyPath = dir.appendingPathComponent("k.pem").path
        try Fixtures.pkcs1PEM.write(toFile: keyPath, atomically: true, encoding: .utf8)
        let cfg = dir.appendingPathComponent("config").path
        try "[DEFAULT]\nuser=u\nfingerprint=f\ntenancy=t\nregion=us-phoenix-1\nkey_file=\(keyPath)\n"
            .write(toFile: cfg, atomically: true, encoding: .utf8)
        let p = try ConfigFileProvider(path: cfg)
        let signer = try p.makeSigner()
        XCTAssertEqual(signer.keyId, "t/u/f")
        var r = URLRequest(url: URL(string: "https://x.example.com/a")!)
        r.httpMethod = "GET"
        try signer.sign(&r)
        XCTAssertNotNil(r.value(forHTTPHeaderField: "authorization"))
    }

    func testEnvironmentOverridesDefaultConfigPath() throws {
        let dir = FileManager.default.temporaryDirectory.appendingPathComponent(UUID().uuidString)
        try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
        defer { try? FileManager.default.removeItem(at: dir) }
        let cfg = dir.appendingPathComponent("config").path
        let content = """
        [DEFAULT]
        user=ocid1.user.env
        fingerprint=aa:bb:cc
        tenancy=ocid1.tenancy.env
        region=eu-madrid-1
        key_file=/tmp/nonexistent-key.pem
        """
        try content.write(toFile: cfg, atomically: true, encoding: .utf8)
        setenv("OCI_CONFIG_FILE", cfg, 1)
        defer { unsetenv("OCI_CONFIG_FILE") }
        let p = try ConfigFileProvider()
        XCTAssertEqual(p.user, "ocid1.user.env")
        XCTAssertEqual(p.region, "eu-madrid-1")
    }

    func testOrderedQueryPairsAndRepeatedKeys() {
        var q: [URLQueryItem] = []
        q.append(URLQueryItem(name: "fields", value: "a"))
        q.append(URLQueryItem(name: "limit", value: "5"))
        q.append(URLQueryItem(name: "fields", value: "b")) // repeated multi key
        let req = OCIRequest(method: "GET", path: "/p", query: q)
        XCTAssertEqual(req.encodedQuery, "fields=a&limit=5&fields=b")
        XCTAssertEqual(req.query["fields"], "a")
        XCTAssertEqual(req.query.values(named: "fields"), ["a", "b"])
        XCTAssertNil(req.query["nope"])
        // CSV-style array values still comma-join through the wire-string encoding.
        let csv = OCIRequest(method: "GET", path: "/p",
                             query: [URLQueryItem(name: "fields", value: "x,y")])
        XCTAssertEqual(csv.encodedQuery, "fields=x%2Cy")
    }
}

final class ErrorTests: XCTestCase {
    func resp(_ status: Int, _ headers: [String: String] = [:]) -> HTTPURLResponse {
        HTTPURLResponse(url: URL(string: "https://x")!, statusCode: status, httpVersion: nil, headerFields: headers)!
    }

    func testParsesOCIJSON() {
        let e = OCIError.parse(data: Data(#"{"code":"NotAuthorizedOrNotFound","message":"Authorization failed or requested resource not found."}"#.utf8),
                               response: resp(404, ["opc-request-id": "REQ/123"]))
        XCTAssertEqual(e.statusCode, 404)
        XCTAssertEqual(e.code, "NotAuthorizedOrNotFound")
        XCTAssertEqual(e.message, "Authorization failed or requested resource not found.")
        XCTAssertEqual(e.opcRequestId, "REQ/123")
    }

    func testNonJSONBodyFallsBack() {
        let e = OCIError.parse(data: Data("<html>Bad Gateway</html>".utf8), response: resp(502))
        XCTAssertEqual(e.statusCode, 502)
        XCTAssertEqual(e.code, "Unknown")
        XCTAssertEqual(e.message, "<html>Bad Gateway</html>")
        XCTAssertNil(e.opcRequestId)
    }

    func testRetryAfterParsing() {
        XCTAssertEqual(RetryPolicy.parseRetryAfter("7"), 7)
        let now = Date(timeIntervalSince1970: 1388957500)
        XCTAssertEqual(RetryPolicy.parseRetryAfter("Sun, 05 Jan 2014 21:31:50 GMT", now: now), 10)
        XCTAssertNil(RetryPolicy.parseRetryAfter("garbage"))
        XCTAssertNil(RetryPolicy.parseRetryAfter(nil))
    }
}
