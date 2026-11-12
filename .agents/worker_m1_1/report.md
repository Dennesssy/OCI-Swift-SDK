# Worker M1 report
## Commands and output
1. `cd OCI-Swift-SDK && swift build --target OCICommon` -> `Build complete! (4.97 sec)` on the first implementation. The re-run after the final edits (PBES2 decrypt, lowercase headers) was started but stalled behind a concurrent repo-wide build and was stopped; the same sources compile in the isolated package below.
2. `swift test --filter CommonTests` in the repo did NOT complete: SwiftPM here uses the Xcode build system and builds the whole package; it errored in `generativeaisandbox` (SwiftDriver error 20, then Libtool libOCICommon.a) and hung >9 min. That module is outside M1 ownership.
3. Isolated package in scratchpad (Package.swift with only OCICommon + CommonTests, symlinks to common/ and Tests/CommonTests), `swift test`:
   `Executed 30 tests, with 0 failures (0 unexpected)` (RetryTests 10, SignerTests 12, ConfigTests 5, ErrorTests 3).
   Recipe: package at /private/tmp/claude-501/-Users-denn-Desktop-OCI-Swift-SDK/0522be5f-a098-4cf3-9731-7e521d1434c2/scratchpad/pkg
## Bugs found and fixed via tests
- URLRequest.allHTTPHeaderFields capitalises names; callRaw now lowercases header keys handed to HTTPClient.
- SecItemImport rejected OpenSSL PBES2 PKCS#8 (-25257); implemented PBES2/PBKDF2/AES-CBC decrypt via CommonCrypto.
