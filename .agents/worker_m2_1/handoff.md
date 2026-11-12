# Handoff - Worker M2 (Generator)

## Observation
- tools/gen/gen.py generates real operation code from Go sources: 56/56 objectstorage, 145/145 identity, 3/3 audit ops emitted, 0 unhandled. swiftc -parse passes on all three outputs; identity and audit also pass swiftc -typecheck against a stub OCICommon.
- Existing Swift state is worse than assumed: objectstorage has only empty Request/Response stubs, audit has no Response types, identity Requests lack OpcRetryToken (41 ops).

## Logic Chain
- Contract exposes only BaseClient.call<T>(_:as:), which cannot return response headers (opc-next-page, etag, opc-work-request-id are needed by Responses). Generated code therefore needs one addition to M1: public func callRaw(_ req: OCIRequest) async throws -> (Data, HTTPURLResponse) (sign + retry + OCIError parsing, no decoding); call() can be callRaw + decode.
- Everything else (OCIRequest memberwise init with labels method/path/query/headers/body, Signer, HTTPClient, BaseClient(host:signer:http:)) matches the contract as written. Path already includes "/<basePath>" prefix (e.g. /20190901/configuration).
- Body JSON, dates, headers parsing live in generated internal OCIGen so OCICommon need not change beyond callRaw.
- Types are generated only when the Swift side lacks real structs, to avoid inventing shapes over existing ones; missing models/enums are reported, not generated.

## Open Items
1. M1: add callRaw (or tell M2/M3 the replacement name). Confirm OCIRequest init labels.
2. M3: delete objectstorage/generated_request_response_stubs.swift before copying generated files (else redeclaration errors). Copy generated *_client.swift (replaces existing shell), oci_gen_support.swift, and generated type files.
3. M3: supply 34 missing objectstorage model/enum types (list in report.md / gen_report.json); decide whether to extend generator to emit Go enums and models.
4. M3: identity Requests lack opcRetryToken property (generator still sends the header); optionally add property.
5. Not implemented: endpoint-template params (objectstorage), body-signing exclusion, Expect header, multi-valued query keys. Needs OCIRequest.query to become ordered pairs and BaseClient options.
6. Generated Request structs are not Codable (Sendable only); existing ones are Codable.

## Next Action
Reviewer runs: python3 -I tools/gen/gen.py --go-sdk <go> --swift-root <repo> --out <scratch> objectstorage identity audit; then swiftc -parse genout/<svc>/*.swift; inspect gen_report.json. M1 to confirm/add callRaw; M3 to integrate per Open Items 2-3.
