# Original User Request
## 2026-11-11
"it needs manual review and comparison use gh sdk or oci cli" then "/teamwork split up the work"
Working directory: /Users/denn/Desktop/OCI-Swift-SDK/OCI-Swift-SDK (git root is parent)
Integrity mode: development

## Findings driving the work (verified 2026-11-11)
- Go SDK v65.130.0 is the reference (cloned in session scratchpad; re-clone with git clone --depth 1 https://github.com/oracle/oci-go-sdk).
- 203 of 214 *_client.swift are empty shells (setRegion only). No HTTP, no signing in OCICommon.
- accessgovernancecp ops are TODO stubs. 68 of 178 services have <=5 files (no models/requests).
- Package.swift has 3 targets of ~178 service dirs.

## Acceptance Criteria
- [ ] M1: OCICommon can sign (OCI API-key RSA-SHA256 draft-cavage) and send a request, parse OCI errors, retry
- [ ] M2: generator in tools/gen emits real client operations from Go SDK sources
- [ ] M3: identity, core(subset), objectstorage, database clients generated with real operations
- [ ] M4: Package.swift targets + signing/unit tests pass (swift test)
