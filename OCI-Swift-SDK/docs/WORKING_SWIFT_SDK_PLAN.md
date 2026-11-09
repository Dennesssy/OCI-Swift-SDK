# Working OCI Swift SDK Plan

Date: 2026-06-20

## Evidence Used

- Local tree: `tree -L 2` in `/Users/denn/OkOci/OCI-Swift-SDK`
- Local CLI catalog: `oci -h`
- Oracle Go SDK catalog: https://github.com/oracle/oci-go-sdk
- Oracle Python SDK catalog: https://github.com/oracle/oci-python-sdk
- Build gate: `swift build`
- Test gate: `swift test`

## Current State

- SwiftPM currently exposes base targets:
  - `OCICommon`
  - `AccessGovernanceCP`
  - `OCI-Swift-SDK` umbrella target
- SwiftPM also exposes 94 generated service targets through data-driven manifest lists in `Package.swift`.
- The repository has 143 local top-level service/runtime directories outside `.git`, `.build`, `Sources`, and `Tests`.
- The current Oracle Go SDK root catalog has 170 directories. Ignoring Go-only `cmd` and `example`, this checkout is missing 30 Go SDK service/runtime directories.
- Static analyzer output from `tools/analyze_sdk_catalog.js` shows:
  - 1,745 local Swift files across service/runtime directories.
  - 145 generated client files.
  - 12 directories with duplicate top-level public types.
  - 32 directories with raw `Any` fields.
  - 10 directories with generated `description` property collisions.
- 3 directories with obvious Go-conversion artifacts such as `common.RequestMetadata`, `.BaseClient`, and `HTTPURLResponse??`.
- 63 directories with unresolved local type references detected by the analyzer.
- `swift build` passes for the currently declared package targets.
- `swift test` passes with Access Governance model encoding/decoding, new generated service JSON tag round-trips, and umbrella service-client construction smoke tests.
- `node tools/validate_manifest_exports.js` passes and confirms umbrella exports match the generated target list.

## Catalog Gaps Versus Oracle Go SDK

These Go SDK directories are not present locally:

- `aidataplatform`
- `apiaccesscontrol`
- `apiplatform`
- `batch`
- `containerregistry`
- `costad`
- `databasetoolsruntime`
- `dblm`
- `dbmulticloud`
- `delegateaccesscontrol`
- `dif`
- `distributeddatabase`
- `gdp`
- `generativeaiagent`
- `generativeaiagentruntime`
- `generativeaidata`
- `iot`
- `jmsutils`
- `limitsincrease`
- `lustrefilestorage`
- `managedkafka`
- `mngdmac`
- `modeldeployment`
- `multicloud`
- `psa`
- `resourceanalytics`
- `securityattribute`
- `self`
- `wlms`
- `zpr`

Local directories not found under the current Go SDK names:

- `aianomalydetection`
- `dts`
- `globallydistributeddatabase`
- `osmanagement`
- `servicemesh`

Some of these may be renamed, older, or service-specific outliers. They need Go/Python/API-name mapping before deletion or replacement.

## Build Fixes Completed

- Excluded duplicate enum companion files from the active `AccessGovernanceCP` target:
  - `instance_lifecycle_state_enum.swift`
  - `license_type_enum.swift`
  - `list_governance_instances_sort_by_enum.swift`
  - `list_governance_instances_sort_order_enum.swift`
  - `sort_order_enum.swift`
- Switched generated targets in `Package.swift` from Swift 6 language mode to Swift 5 language mode for now.
- Added `JSONValue` in `OCICommon` for payload fields generated as open JSON maps.
- Updated Access Governance tag fields to use `[String: [String: JSONValue]]`.
- Changed Access Governance model debug text for types with an API field named `description` to avoid colliding with `CustomStringConvertible.description`.
- Fixed actor initializer region setup in `AccessGovernanceCPClient`.
- Added `OCICommon` runtime placeholders for generated clients:
  - `HTTPClient`
  - `Signer`
  - `ClientProtocol`
  - `Region`
  - `ConfigurationProvider`
- Added `tools/analyze_sdk_catalog.js` to generate repeatable catalog/build-risk analysis, including manifest membership, Go-conversion artifact detection, and unresolved local type references.
- Added `tools/validate_manifest_exports.js` to prevent `Package.swift` generated targets and `Sources/OCI_SDK.swift` umbrella exports from drifting.
- Added 94 generated service targets and umbrella re-exports across buildable batches.
- Added missing converted models found by comparing against Oracle Go/Python SDK sources:
  - `usage/SkuProducts`
  - `computeinstanceagent/InstanceAgentCommandTarget`
  - `computeinstanceagent/InstanceAgentCommandContent`
- Added and verified additional locally present service targets after replacing generated `Any` payloads with `JSONValue`:
  - `Analytics`
  - `ApmConfig`
  - `Audit`
  - `Bastion`
  - `CapacityManagement`
  - `ComputeCloudAtCustomer`
  - `DataLabelingService`
  - `DataLabelingServiceDataPlane`
  - `EmWarehouse`
  - `Integration`
  - `Monitoring`
  - `Streaming`
  - `Vault`
  - `VbsInst`
  - `VisualBuilder`
- Removed `AiAnomalyDetection` from the buildable batch after compile evidence showed unresolved Go-conversion artifacts such as `float32` and missing polymorphic aliases.
- Tried `AiVision` and left it out after compile evidence showed broad Go-conversion artifacts including `common.RequestMetadata`, `.BaseClient`, `HTTPURLResponse??`, and truncated response model type names.

## Next Implementation Stages

1. Finish shared runtime types in `common`.
   - Replace placeholder `HTTPClient`, `Signer`, and endpoint abstractions with real request execution and signing behavior.
   - Move duplicate `ConfigurationProvider`, retry token generation, service enablement checks, endpoint construction, signing interfaces, and HTTP abstractions out of service files and into `OCICommon`.
   - Use the Go/Python SDK common packages as behavioral references.

2. Add a manifest generator.
   - Convert the current data-driven first batch into a generated manifest/update step.
   - Apply per-service duplicate-file excludes using `tools/analyze_sdk_catalog.js`.
   - Generate the umbrella target exports from the same manifest data so target and export lists cannot drift.

3. Fix generated model patterns globally.
   - Replace `Any` JSON maps with `JSONValue`.
   - Convert generated string enums used in `Codable` models to `Codable`.
   - Rewrite `CustomStringConvertible` for models with a real `description` property.
   - Normalize duplicate enum emission, ideally in the generator rather than via manual excludes.

4. Implement real request execution.
   - Generated clients currently contain placeholder request methods in the exposed service.
   - Add request construction, signing, retry handling, response decoding, headers, pagination helpers, and endpoint selection.
   - Back this with tests using a mock HTTP transport before live OCI calls.

5. Expand service coverage toward the catalog.
   - First compile all local service directories.
   - Then add the 30 missing current Go SDK services or map them to equivalent local names.
   - Keep `oci -h`, Go SDK, and Python SDK catalogs as cross-checks because CLI command names and SDK package names differ.

6. Verification gates for completion.
   - `swift build` across all generated service targets.
   - `swift test` with runtime/common tests plus representative service model/client tests.
   - A local mock transport test proving at least one signed request path is constructed correctly.
   - A catalog report showing every intended Go/Python SDK service is either implemented, intentionally mapped, or explicitly excluded with a reason.
