# PROJECT
## Milestones
| # | Name | Scope | Write Ownership | Deps | Status |
|---|------|-------|-----------------|------|--------|
| M1 | Runtime | OCICommon: ConfigFileProvider (~/.oci/config), RSA-SHA256 request Signer, URLSession HTTPClient, OCIError parsing, retry | OCI-Swift-SDK/common/ , OCI-Swift-SDK/Tests/CommonTests/ | none | dispatched |
| M2 | Generator | tools/gen script (Python or Swift) reading oci-go-sdk <svc>/*_client.go + request/response files, emitting Swift client ops against the M1 contract | OCI-Swift-SDK/tools/gen/ | contract below | dispatched |
| M3 | Services | run generator for identity, objectstorage, database, core subset; fix model gaps | service dirs only | M1,M2 | pending |
| M4 | Package+tests | Package.swift targets, test suite, CI build | Package.swift, Tests/ | M1-M3 | pending |
## Interface Contract (M1 provides, M2 targets)
```swift
public struct OCIRequest { method: String; path: String; query: [String:String]; headers: [String:String]; body: Data? }
public protocol Signer: Sendable { func sign(_ req: inout URLRequest) throws }
public protocol HTTPClient: Sendable { func send(_ req: OCIRequest, host: String) async throws -> (Data, HTTPURLResponse) }
public struct OCIError: Error { statusCode: Int; code: String; message: String; opcRequestId: String? }
public final class BaseClient: Sendable { init(host: String, signer: Signer, http: HTTPClient); func call<T: Decodable>(_ req: OCIRequest, as: T.Type) async throws -> T }
```
Generated ops call BaseClient.call. Workers may refine names but must keep this shape and document changes in handoff.md.
## Gate scale (per skill: adapt roster)
M1 security-relevant: Worker + 2 Reviewers + Auditor. M2: Worker + 1 Reviewer. Mechanical checks via swift build/test.
