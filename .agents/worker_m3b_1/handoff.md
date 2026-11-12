# Handoff - Worker M3b (objectstorage)

## Observation
- objectstorage compiles against OCICommon with 0 errors in an isolated package; 10 stub-HTTP tests pass. 56 ops are real (path/query/headers/body/response-header mapping), none stubbed.
- Files changed only under OCI-Swift-SDK/objectstorage/ and OCI-Swift-SDK/Tests/ObjectStorageTests/ (nothing committed).

## Logic Chain
- Endpoint-template params (ReplaceMandatoryParamInPath): in Go these only substitute `{namespaceName+Dot}` etc. into the HOST, and only when the opt-in realm-specific template (oc1: https://{namespaceName+Dot}objectstorage.{region}...oci.customer-oci.com) is enabled. The default template has no such param. namespace/bucket/object remain ordinary path params (/n/{ns}/b/{bucket}/o/{object}) which the generated code fills and signs. So default behaviour matches Go. Realm-specific host templates, dual-stack option ({dualStack?ds.oci.:}) and `+Dot` replacement are NOT implemented.
- Multi-value query: all array query params in objectstorage (fields on GetBucket, ListBuckets, ListPrivateEndpoints) are collectionFormat csv; Go joins with ",". Generated OCIGen.string joins with "," so behaviour matches; no repeated-key support needed here. Tested.
- Model derivation: field names = Go json tags. Optionality: fields marked mandatory are non-optional only on *Details (request) types; all fields on other types are optional so decoding tolerates absent fields like Go. Existing hand models (Bucket, ObjectSummary...) were left untouched.
- Content-Length / x-content-sha256: signer sets these from the body (always signs body); Go excludes body from signing for PutObject/UploadPart. Functionally accepted by service but not Go-identical (unverified against live service).

## Open Items
1. Generator gaps to fix in tools/gen (hand patches in objectstorage_client.swift will be lost on regeneration): (a) endpointTemplate emitted as "" (Go uses getEndpointTemplatePerRealm default); (b) default Content-Type application/octet-stream for binary bodies; (c) emit Go enums/structs, or a flag; models.py in scratchpad/m3b_tools is a candidate; (d) body-signing exclusion and `Expect: 100-continue` for PutObject/UploadPart not applied.
2. Pre-existing hand-written models (Bucket, BucketSummary, ObjectSummary, ReplicationPolicy, WorkRequest...) were not compared field-by-field to Go; they have internal memberwise inits only (not constructible from other modules except by decoding).
3. Package.swift (M4): target is named "objectstorage" (lowercase) at root; my isolated package used module "ObjectStorage" and tests `@testable import ObjectStorage`. M4 must add testTarget ObjectStorageTests (path Tests/ObjectStorageTests, deps objectstorage + OCICommon) and adjust the import to the real module name, plus `exclude` it from the umbrella test target.
4. No live-service test; no Region/regional-host helper beyond init(region:secondLevelDomain:).
5. Response header mapping for Date-typed headers uses OCIGen.parseDate (RFC 1123 supported, tested for last-modified).

## Next Action
Reviewer: `python3 -I OCI-Swift-SDK/tools/gen/gen.py --go-sdk <go> --swift-root OCI-Swift-SDK --out <tmp> objectstorage` and diff against objectstorage/*_request_response.swift (should be identical) and objectstorage_client.swift (differences = 2 hand patches above); build the isolated package (Package.swift in scratchpad/pkg3 using symlinks) and run swift test. M4 wires Package.swift.
