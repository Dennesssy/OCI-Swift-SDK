import XCTest
import Foundation
import OCICommon
@testable import objectstorage

struct StubSigner: Signer {
    func sign(_ req: inout URLRequest) throws { req.setValue("Signature stub", forHTTPHeaderField: "authorization") }
}

/// Records every request the client sends and replies with a canned response.
final class StubHTTP: HTTPClient, @unchecked Sendable {
    private let lock = NSLock()
    private var _sent: [(OCIRequest, String)] = []
    var status = 200
    var body = Data()
    var responseHeaders: [String: String] = [:]

    private func withLock<T>(_ f: () -> T) -> T { lock.lock(); defer { lock.unlock() }; return f() }
    var sent: [(OCIRequest, String)] { withLock { _sent } }

    func send(_ req: OCIRequest, host: String) async throws -> (Data, HTTPURLResponse) {
        withLock { _sent.append((req, host)) }
        let resp = HTTPURLResponse(url: URL(string: "https://\(host)\(req.path)")!, statusCode: status, httpVersion: "HTTP/1.1", headerFields: responseHeaders)!
        return (body, resp)
    }
}

final class ObjectStorageClientTests: XCTestCase {
    func makeClient(_ http: StubHTTP) -> ObjectStorageClient {
        ObjectStorageClient(host: "objectstorage.us-phoenix-1.oraclecloud.com", signer: StubSigner(), http: http)
    }

    func testRegionInitBuildsHost() {
        let http = StubHTTP()
        let c = ObjectStorageClient(region: "eu-frankfurt-1", signer: StubSigner(), http: http)
        XCTAssertEqual(c.base.host, "objectstorage.eu-frankfurt-1.oraclecloud.com")
    }

    func testListBucketsRequestAndResponse() async throws {
        let http = StubHTTP()
        http.responseHeaders = ["opc-request-id": "req-1", "opc-next-page": "tok2", "opc-client-request-id": "cli-1"]
        http.body = Data(#"[{"namespace":"ns","name":"b1","compartmentId":"ocid1.compartment.oc1..x","timeCreated":"2024-01-02T03:04:05.123Z","timeModified":"2024-01-02T03:04:06Z"}]"#.utf8)
        let resp = try await makeClient(http).listBuckets(ListBucketsRequest(
            namespaceName: "my ns", compartmentId: "ocid1.compartment.oc1..x", limit: 5, page: "p1",
            fields: [.tags], opcClientRequestId: "cli-1"))
        let (req, host) = try XCTUnwrap(http.sent.first)
        XCTAssertEqual(host, "objectstorage.us-phoenix-1.oraclecloud.com")
        XCTAssertEqual(req.method, "GET")
        XCTAssertEqual(req.path, "/n/my%20ns/b")
        XCTAssertEqual(req.query["compartmentId"], "ocid1.compartment.oc1..x")
        XCTAssertEqual(req.query["limit"], "5")
        XCTAssertEqual(req.query["page"], "p1")
        XCTAssertEqual(req.query["fields"], "tags")
        XCTAssertEqual(req.encodedQuery, "compartmentId=ocid1.compartment.oc1..x&limit=5&page=p1&fields=tags")
        XCTAssertEqual(req.headers["opc-client-request-id"], "cli-1")
        XCTAssertEqual(req.headers["authorization"], "Signature stub")
        XCTAssertNil(req.body)
        XCTAssertEqual(resp.opcRequestId, "req-1")
        XCTAssertEqual(resp.opcNextPage, "tok2")
        XCTAssertEqual(resp.items?.count, 1)
        XCTAssertEqual(resp.items?.first?.name, "b1")
        XCTAssertEqual(resp.items?.first?.timeModified, Date(timeIntervalSince1970: 1704164646))
    }

    func testGetBucketMultiValueFieldsAreCommaJoined() async throws {
        let http = StubHTTP()
        http.body = Data(#"{"namespace":"ns","name":"b","compartmentId":"c","timeCreated":"2024-01-02T03:04:05Z","timeModified":"2024-01-02T03:04:05Z","approximateCount":3}"#.utf8)
        let resp = try await makeClient(http).getBucket(GetBucketRequest(namespaceName: "ns", bucketName: "b", fields: [.approximateCount, .autoTiering]))
        let (req, _) = try XCTUnwrap(http.sent.first)
        XCTAssertEqual(req.query["fields"], "approximateCount,autoTiering")
        XCTAssertEqual(req.encodedQuery, "fields=approximateCount%2CautoTiering")
        XCTAssertEqual(resp.bucket?.approximateCount, 3)
    }

    func testGetObjectBinaryBodyAndHeaders() async throws {
        let http = StubHTTP()
        let bytes = Data([0x00, 0xFF, 0x10, 0x80, 0x7F, 0xC3, 0x28])  // not valid UTF-8
        http.body = bytes
        http.responseHeaders = ["etag": "\"abc\"", "content-type": "application/octet-stream", "content-length": "7",
                                "opc-meta-color": "blue", "last-modified": "Wed, 21 Oct 2015 07:28:00 GMT",
                                "opc-request-id": "r2", "storage-tier": "Standard", "version-id": "v1"]
        let resp = try await makeClient(http).getObject(GetObjectRequest(
            namespaceName: "ns", bucketName: "bkt", objectName: "dir/sub/file name.bin",
            versionId: "v1", ifMatch: "\"abc\"", range: "bytes=0-6"))
        let (req, _) = try XCTUnwrap(http.sent.first)
        XCTAssertEqual(req.method, "GET")
        XCTAssertEqual(req.path, "/n/ns/b/bkt/o/dir/sub/file%20name.bin")
        XCTAssertEqual(req.query.values(named: "versionId"), ["v1"])
        XCTAssertEqual(req.headers["if-match"], "\"abc\"")
        XCTAssertEqual(req.headers["range"], "bytes=0-6")
        XCTAssertEqual(resp.content, bytes)
        XCTAssertEqual(resp.eTag, "\"abc\"")
        XCTAssertEqual(resp.contentLength, 7)
        XCTAssertEqual(resp.contentType, "application/octet-stream")
        XCTAssertEqual(resp.opcMeta, ["color": "blue"])
        XCTAssertEqual(resp.opcRequestId, "r2")
        XCTAssertEqual(resp.storageTier, .standard)
        XCTAssertEqual(resp.versionId, "v1")
        XCTAssertEqual(resp.lastModified, Date(timeIntervalSince1970: 1445412480))
    }

    func testPutObjectRequestAndResponse() async throws {
        let http = StubHTTP()
        http.responseHeaders = ["etag": "e1", "opc-content-md5": "md5==", "opc-request-id": "r3", "version-id": "v9",
                                "last-modified": "Wed, 21 Oct 2015 07:28:00 GMT"]
        let payload = Data("hello object".utf8)
        let resp = try await makeClient(http).putObject(PutObjectRequest(
            namespaceName: "ns", bucketName: "bkt", objectName: "a/b.txt", putObjectBody: payload,
            ifNoneMatch: "*", opcClientRequestId: "c9", contentType: "text/plain",
            storageTier: .infrequentAccess, opcMeta: ["owner": "me"]))
        let (req, _) = try XCTUnwrap(http.sent.first)
        XCTAssertEqual(req.method, "PUT")
        XCTAssertEqual(req.path, "/n/ns/b/bkt/o/a/b.txt")
        XCTAssertEqual(req.body, payload)
        XCTAssertEqual(req.headers["if-none-match"], "*")
        XCTAssertEqual(req.headers["opc-client-request-id"], "c9")
        XCTAssertEqual(req.headers["content-type"], "text/plain")
        XCTAssertEqual(req.headers["storage-tier"], "InfrequentAccess")
        XCTAssertEqual(req.headers["opc-meta-owner"], "me")
        XCTAssertEqual(resp.eTag, "e1")
        XCTAssertEqual(resp.opcContentMd5, "md5==")
        XCTAssertEqual(resp.versionId, "v9")
        XCTAssertEqual(resp.opcRequestId, "r3")
        XCTAssertEqual(resp.lastModified, Date(timeIntervalSince1970: 1445412480))
    }

    func testPutObjectDefaultsToOctetStream() async throws {
        let http = StubHTTP()
        _ = try await makeClient(http).putObject(PutObjectRequest(namespaceName: "ns", bucketName: "b", objectName: "o", putObjectBody: Data([1, 2, 3])))
        let (req, _) = try XCTUnwrap(http.sent.first)
        XCTAssertEqual(req.headers["content-type"], "application/octet-stream")
    }

    func testJSONBodyOperationBatchDelete() async throws {
        let http = StubHTTP()
        http.body = Data(#"{"deleted":[{"objectName":"a"}],"failed":[{"objectName":"b","statusCode":409,"errorMessage":"m"}]}"#.utf8)
        let details = BatchDeleteObjectsDetails(objects: [BatchDeleteObjectIdentifier(objectName: "a"), BatchDeleteObjectIdentifier(objectName: "b")])
        let resp = try await makeClient(http).batchDeleteObjects(BatchDeleteObjectsRequest(namespaceName: "ns", bucketName: "bk", batchDeleteObjectsDetails: details))
        let (req, _) = try XCTUnwrap(http.sent.first)
        XCTAssertEqual(req.method, "POST")
        XCTAssertEqual(req.path, "/n/ns/b/bk/actions/batchDeleteObjects")
        XCTAssertEqual(req.headers["content-type"], "application/json")
        let sent = try JSONSerialization.jsonObject(with: try XCTUnwrap(req.body)) as? [String: Any]
        let objs = sent?["objects"] as? [[String: Any]]
        XCTAssertEqual(objs?.compactMap { $0["objectName"] as? String }, ["a", "b"])
        XCTAssertEqual(resp.batchDeleteObjectsResult?.deleted?.first?.objectName, "a")
        XCTAssertEqual(resp.batchDeleteObjectsResult?.failed?.first?.statusCode, 409)
    }

    func testNotFoundParsedIntoOCIError() async throws {
        let http = StubHTTP()
        http.status = 404
        http.body = Data(#"{"code":"BucketNotFound","message":"The bucket 'nope' does not exist in namespace 'ns'"}"#.utf8)
        http.responseHeaders = ["opc-request-id": "err-req-7"]
        do {
            _ = try await makeClient(http).getBucket(GetBucketRequest(namespaceName: "ns", bucketName: "nope"))
            XCTFail("expected error")
        } catch let e as OCIError {
            XCTAssertEqual(e.statusCode, 404)
            XCTAssertEqual(e.code, "BucketNotFound")
            XCTAssertTrue(e.message.contains("does not exist"))
            XCTAssertEqual(e.opcRequestId, "err-req-7")
        }
        XCTAssertEqual(http.sent.count, 1, "404 must not be retried")
        XCTAssertEqual(http.sent.first?.0.path, "/n/ns/b/nope")
    }

    func testMissingPathParamThrows() async {
        let http = StubHTTP()
        do {
            _ = try await makeClient(http).getBucket(GetBucketRequest(namespaceName: "", bucketName: "b"))
            XCTFail("expected validation error")
        } catch {
            XCTAssertTrue(http.sent.isEmpty)
        }
    }

    func testModelEnumsAndCodingKeys() throws {
        let d = Data(#"{"name":"pe","namespace":"ns","lifecycleState":"ACTIVE","accessTargets":[{"namespace":"ns","compartmentId":"c","bucket":"*"}]}"#.utf8)
        let pe = try JSONDecoder().decode(PrivateEndpoint.self, from: d)
        XCTAssertEqual(pe.lifecycleState, .active)
        XCTAssertEqual(pe.accessTargets?.first?.bucket, "*")
        XCTAssertEqual(PrivateEndpointLifecycleStateEnum.allCases.count, 7)
    }
}
