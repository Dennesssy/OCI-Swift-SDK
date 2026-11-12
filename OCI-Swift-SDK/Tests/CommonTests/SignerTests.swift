import XCTest
import Foundation
import CryptoKit
@testable import OCICommon

final class SignerTests: XCTestCase {
    func makeSigner(_ pem: String = Fixtures.pkcs1PEM, pass: String? = nil) throws -> APIKeySigner {
        try APIKeySigner(tenancy: "ocid1.tenancy.oc1..t", user: "ocid1.user.oc1..u", fingerprint: "aa:bb:cc",
                         privateKeyPEM: pem, passphrase: pass)
    }

    func getRequest() -> URLRequest {
        let o = OCIRequest(method: "GET", path: "/20160918/instances", query: Fixtures.getQuery)
        var r = URLRequest(url: o.url(host: Fixtures.host)!)
        r.httpMethod = "GET"
        r.setValue(Fixtures.docDate, forHTTPHeaderField: "date")
        return r
    }

    func signatureField(_ auth: String) -> String {
        auth.components(separatedBy: "signature=\"")[1].dropLast().description
    }

    func testSigningStringMatchesOracleDocExample() throws {
        let s = try APIKeySigner.signingString(
            method: "GET",
            requestTarget: "/20160918/instances?availabilityDomain=Pjwf%3A%20PHX-AD-1&compartmentId=ocid1.compartment.oc1..aaaaaaaam3we6vgnherjq5q2idnccdflvjsnog7mlr6rtdb25gilchfeyjxa&displayName=TeamXInstances&volumeId=ocid1.volume.oc1.phx.abyhqljrgvttnlx73nmrwfaux7kcvzfs3s66izvxf2h4lgvyndsdsnoiwr5q",
            headers: ["Date": Fixtures.docDate, "Host": Fixtures.host],
            headerNames: APIKeySigner.headerNames(forMethod: "GET"))
        XCTAssertEqual(s, """
        (request-target): get /20160918/instances?availabilityDomain=Pjwf%3A%20PHX-AD-1&compartmentId=ocid1.compartment.oc1..aaaaaaaam3we6vgnherjq5q2idnccdflvjsnog7mlr6rtdb25gilchfeyjxa&displayName=TeamXInstances&volumeId=ocid1.volume.oc1.phx.abyhqljrgvttnlx73nmrwfaux7kcvzfs3s66izvxf2h4lgvyndsdsnoiwr5q
        date: Thu, 05 Jan 2014 21:31:40 GMT
        host: iaas.us-phoenix-1.oraclecloud.com
        """)
    }

    func testHeaderListsPerMethod() {
        XCTAssertEqual(APIKeySigner.headerNames(forMethod: "get"), ["(request-target)", "date", "host"])
        XCTAssertEqual(APIKeySigner.headerNames(forMethod: "DELETE"), ["(request-target)", "date", "host"])
        for m in ["POST", "PUT", "PATCH"] {
            XCTAssertEqual(APIKeySigner.headerNames(forMethod: m),
                           ["(request-target)", "date", "host", "x-content-sha256", "content-type", "content-length"])
        }
    }

    func testMissingHeaderThrows() {
        XCTAssertThrowsError(try APIKeySigner.signingString(method: "GET", requestTarget: "/", headers: [:], headerNames: ["date"]))
    }

    func testGETSignatureMatchesIndependentOpenSSLValue() throws {
        var r = getRequest()
        try makeSigner().sign(&r)
        let auth = try XCTUnwrap(r.value(forHTTPHeaderField: "authorization"))
        XCTAssertTrue(auth.hasPrefix("Signature version=\"1\",keyId=\"ocid1.tenancy.oc1..t/ocid1.user.oc1..u/aa:bb:cc\",algorithm=\"rsa-sha256\",headers=\"(request-target) date host\",signature=\""), auth)
        XCTAssertEqual(signatureField(auth), Fixtures.getSignature)
        XCTAssertNil(r.value(forHTTPHeaderField: "x-content-sha256"))
    }

    func testPOSTAddsBodyHeadersAndSignatureMatches() throws {
        let body = Data("{\"a\":1}".utf8)
        let o = OCIRequest(method: "POST", path: "/20160918/volumeAttachments", body: body)
        var r = URLRequest(url: o.url(host: Fixtures.host)!)
        r.httpMethod = "POST"; r.httpBody = body
        r.setValue(Fixtures.docDate, forHTTPHeaderField: "date")
        try makeSigner().sign(&r)
        XCTAssertEqual(r.value(forHTTPHeaderField: "x-content-sha256"), Data(SHA256.hash(data: body)).base64EncodedString())
        XCTAssertEqual(r.value(forHTTPHeaderField: "x-content-sha256"), "AVq9f1zFei3ZS3WQ8ErYCEJzkF7jPsXOvq5iJ2qX+GI=")
        XCTAssertEqual(r.value(forHTTPHeaderField: "content-length"), "7")
        XCTAssertEqual(r.value(forHTTPHeaderField: "content-type"), "application/json")
        let auth = try XCTUnwrap(r.value(forHTTPHeaderField: "authorization"))
        XCTAssertTrue(auth.contains("headers=\"(request-target) date host x-content-sha256 content-type content-length\""))
        XCTAssertEqual(signatureField(auth), Fixtures.postSignature)
    }

    func testPKCS8KeyProducesSameSignature() throws {
        var r = getRequest()
        try makeSigner(Fixtures.pkcs8PEM).sign(&r)
        XCTAssertEqual(signatureField(r.value(forHTTPHeaderField: "authorization")!), Fixtures.getSignature)
    }

    func testEncryptedPKCS8KeyProducesSameSignature() throws {
        var r = getRequest()
        try makeSigner(Fixtures.encryptedPEM, pass: Fixtures.passphrase).sign(&r)
        XCTAssertEqual(signatureField(r.value(forHTTPHeaderField: "authorization")!), Fixtures.getSignature)
    }

    func testEncryptedKeyWithoutPassphraseThrows() {
        XCTAssertThrowsError(try makeSigner(Fixtures.encryptedPEM))
    }

    func testEncryptedKeyWrongPassphraseThrows() {
        XCTAssertThrowsError(try makeSigner(Fixtures.encryptedPEM, pass: "wrong"))
    }

    func testGarbagePEMThrows() {
        XCTAssertThrowsError(try makeSigner("not a pem"))
        XCTAssertThrowsError(try makeSigner("-----BEGIN RSA PRIVATE KEY-----\nAAAA\n-----END RSA PRIVATE KEY-----"))
    }

    func testDateGeneratedFromClockWhenAbsent() throws {
        let s = try APIKeySigner(tenancy: "t", user: "u", fingerprint: "f", privateKeyPEM: Fixtures.pkcs1PEM,
                                 now: { Fixtures.fixedDate })
        var r = URLRequest(url: URL(string: "https://\(Fixtures.host)/x")!)
        r.httpMethod = "GET"
        try s.sign(&r)
        XCTAssertEqual(r.value(forHTTPHeaderField: "date"), "Sun, 05 Jan 2014 21:31:40 GMT")
        XCTAssertEqual(r.value(forHTTPHeaderField: "host"), Fixtures.host)
    }

    func testQueryEncodingIsSortedAndRFC3986() {
        let o = OCIRequest(method: "GET", path: "/p", query: ["b": "x y", "a": "1:2/3"])
        XCTAssertEqual(o.encodedQuery, "a=1%3A2%2F3&b=x%20y")
    }
}
