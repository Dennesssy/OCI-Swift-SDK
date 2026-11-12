# Handoff M1
## Observation
OCICommon now has oci_request.swift (OCIRequest, OCIError.parse), oci_signer.swift (Signer, APIKeySigner, PKCS#1/PKCS#8/encrypted PKCS#8 PEM),
oci_config.swift (ConfigFileProvider: DEFAULT inheritance, ~ expansion), oci_http.swift (HTTPClient, URLSessionHTTPClient, RetryPolicy, BaseClient, EmptyResponse).
30 tests pass in an isolated package; `swift build --target OCICommon` passed on the first implementation.
## Logic Chain
- Contract kept (OCIRequest, Signer.sign(inout URLRequest), HTTPClient.send(OCIRequest, host:), OCIError, BaseClient.call). Refinements: BaseClient.init has defaults plus retry:/sleep: params; HTTPClient receives the ALREADY-SIGNED request with lowercase header keys (authorization, date, host, x-content-sha256, ...).
- Orchestrator addition done: BaseClient.callRaw(_:) -> (Data, HTTPURLResponse): signs per attempt, retries 429/5xx/transient URLError (Retry-After honored, exponential backoff), throws parsed OCIError on non-2xx, does not decode, does not prefix path. call<T> is a thin wrapper (empty body decodes "{}"). Tests: testCallRaw*.
- Signing vector: Oracle docs "Test Values" key and GET example (docs.oracle.com/en-us/iaas/Content/API/Concepts/signingrequests.htm). The page prints no concrete signature, so expected values were computed independently with openssl (PKCS1v15 is deterministic). Header order is (request-target) date host. The doc's date "Thu, 05 Jan 2014" is really a Sunday, so it is passed verbatim as a header.
- Replaced the empty HTTPClient/Signer protocols in runtime.swift. About 77 service modules declare their own local HTTPClient struct / Signer protocol in */oci_infra.swift; these shadow OCICommon's. Generated clients must not use those placeholders.
- Package.swift: added testTarget CommonTests (path Tests/CommonTests) and `exclude: ["CommonTests"]` on OCI-Swift-SDKTests to avoid overlapping sources.
## Open Items
- Repo-level `swift test --filter CommonTests` does not finish (whole-package build, generativeaisandbox fails). M4 to fix or auditor to use the isolated package.
- Legacy "Proc-Type: 4,ENCRYPTED" PEM path (SecItemImport) untested.
- Not implemented: OCI_CONFIG_FILE env, instance/resource principals. No live network test.
## Next Action
M2/M3 generate ops calling BaseClient.call/callRaw; M4 makes repo-level swift test work.
