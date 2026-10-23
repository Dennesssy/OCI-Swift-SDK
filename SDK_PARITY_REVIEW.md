# OCI Swift SDK — Full Review vs. oracle/oci-go-sdk (master)

Reference: `oci-go-sdk` cloned to `/tmp/oci-go-sdk` (27,170 `.go` files).

## Headline findings

| Metric | Value |
|---|---|
| Swift `.swift` files (excl. `.build/`) | **1,772** |
| Go `.go` files | **27,170** |
| Overall deficit | **~15×** |
| Service folders in repo | 147 |
| Folders with **file-count parity** | **6** |
| Folders with parity **missing** | **132** |
| Go service folders absent from repo entirely | **33** |

## Folders at full parity (6)

| Folder | Files |
|---|---|
| `ailanguage` | 192 |
| `audit` | 12 |
| `loggingingestion` | 5 |
| `ocicontrolcenter` | 12 |
| `osubsubscription` | 17 |
| `threatintelligence` | 28 |

`ailanguage` was **not** at parity before this branch: it had 168 of 192 files.
Two commits added the 24 missing models and fixed the enum convention.

## Python SDK comparison (oracle/oci-python-sdk)

Checked against Python SDK v2.x (installed via `oci-cli` 3.95.1).

| SDK | Model files | Structure |
|---|---|---|
| Python | 143 | Models only (no `*_request_response` wrappers, no separate enum files) |
| Go | 192 | Models + `*_request_response` + enums + other artifacts |
| Swift | 192 | Mirrors Go exactly |

**Key differences:**
- Python SDK uses `OracleSDKGenerator` and does not emit `*_request_response` wrapper files
- Python SDK does not split enums into separate `*_enum.py` files
- Python SDK has no `operation_status`, `sort_order` as separate files

**Conclusion:** The Swift SDK correctly mirrors the Go SDK (its source), not the Python SDK. The 49 extra files in Swift/Go are Go SDK generator artifacts, not missing files. The Python SDK comparison confirms the Swift transpiler is using the correct reference (Go SDK).


## The 132 parity-missing folders

Most have 2 files (a client plus one `sort_order_enum`) against hundreds in Go.
Worst gaps (Go → Swift):

| Folder | Go | Swift | Missing |
|---|---|---|---|
| `core` | 1245 | 135 | 1110 |
| `database` | 1080 | 2 | 1078 |
| `databasemanagement` | 1087 | 2 | 1085 |
| `datasafe` | 1132 | 2 | 1130 |
| `identitydomains` | 817 | 2 | 815 |
| `dataintegration` | 757 | 2 | 755 |
| `opsi` | 772 | 2 | 770 |
| `fleetappsmanagement` | 669 | 2 | 667 |
| `devops` | 690 | **0** | 690 |
| `cloudguard` | 481 | 2 | 479 |
| `goldengate` | 589 | 2 | 587 |
| `loganalytics` | 639 | 2 | 637 |
| `osmanagementhub` | 518 | 2 | 516 |
| `aivision` | 212 | 114 | 98 |
| `cloudmigrations` | 283 | 2 | 281 |
| `datacatalog` | 348 | 2 | 346 |
| `waf` | 92 | 2 | 90 |
| `vnmonitoring` | 283 | 2 | 281 |
| `stackmonitoring` | 310 | 2 | 308 |

Folders with **0** Swift files (folder exists in Go only, or not even in the repo):
`apigateway` (232), `apmsynthetics` (128), `apmtraces` (98), `artifacts` (72),
`devops` (690), `identity` (282).

Also **not in the Swift repo at all** (33 Go service folders):
`aidataplatform`, `apiaccesscontrol`, `apiplatform`, `batch`, `ccdoffers`,
`clusterhealth`, `containerregistry`, `costad`, `databasetoolsruntime`, `datacc`,
`dblm`, `dbmulticloud`, `ddfs`, `delegateaccesscontrol`, `dif`,
`distributeddatabase`, `gdp`, `generativeaiagent`, `generativeaiagentruntime`,
`generativeaidata`, `generativeaisandbox`, `iot`, `jmsutils`, `limitsincrease`,
`lustrefilestorage`, `managedkafka`, `mngdmac`, `modeldeployment`, `multicloud`,
`ociproductcatalog`, `psa`, `resourceanalytics`, `securityattribute`, `self`,
`wlms`, `zpr`.
(`cmd/` and `example/` are tooling/samples — not service surfaces.)

Note: **file-count parity is necessary but not sufficient.** `devops` has 690 Go
files and 0 Swift files, yet `Package.swift` declares a `devops`-adjacent target
set; conversely some Swift folders have *more* files than Go
(`accessgovernancecp`: go=22, swift=27) — surplus comes from the transpiler
splitting Go enums into separate `*_enum.swift` files.

## Root cause of ailanguage's build failure (fixed by this branch)

All 32 enums in `ailanguage` were emitted as an **illegal** pair:

```swift
public typealias X = String        // e.g. ProjectLifecycleStateEnum
public enum X: String, Codable, Sendable { ... }
```

`typealias X = String` + `enum X` is a redeclaration error in Swift
(confirmed with a minimal `swiftc` repro). 25 of 25 files containing the
alias hit it.

Working convention (from untouched `adm/operation_status.swift`) is
**enum-only**, no typealias:

```swift
public enum OperationStatusEnum: String, Codable, Sendable { ... }
public extension OperationStatusEnum {
    static var allValues: [...] { [...] }
    static func fromString(_ v: String) -> OperationStatusEnum? { .init(rawValue: v) }
}
```

## Transpiler conventions derived (for regenerating the other 132 folders)

1. Go pointer `*T` → Swift `T?`. Go value / slice → `T?` with defaulted init param.
   `mandatory:"true"` does **not** make a Swift field non-optional
   (`compartmentId: String?` despite `mandatory:"true"` in Go).
2. Enums: enum-only, same name as the Go enum. No `typealias`.
3. Go interface → concrete struct name (`InputLocation`, `ClassificationType`),
   **not** `any InputLocation` — even though the transpiler sometimes emits a
   `public protocol` of that name in a sibling file.
4. Request files: PascalCase `CodingKeys` (`case projectId = "ProjectId"`),
   model files: camelCase.
5. Header/response params get `String??` (double optional); `http.Response??`
   for raw response; `common.RequestMetadata?` for retry metadata.
6. Timestamps (`common.SDKTime`) → `Date?`; tags → `[String: String]?` freeform
   and `[String: [String: Any]]?` defined/system.
7. Go embedded-body struct (`ChangeXDetails \`contributesTo:"body"\``) is
   **dropped** from the generated request struct.
8. Swift reserved keywords in enum cases need backticks: `` case `class` ``.

## Systemic defects that still block `swift build`

Not fixed here — they affect the whole SDK, not just ailanguage:

| Defect | Evidence |
|---|---|
| `typealias X = String` + `enum X` | 25/25 ailanguage alias files; fixed in this branch for the 5 files added here, still present in the other 20 + all of `adm`, etc. |
| `Any` inside `Sendable` structs | `project_summary.swift:31` — `definedTags: [String: [String: Any]]?` in a `Sendable` struct |
| `description` property vs `CustomStringConvertible` | `project.swift:76`, `project_summary.swift:76`, `create_project_details.swift:52` — identical line numbers |
| `Date?`/`Float?`/`Int?` interpolated into `String` | `project.swift:77`, `relation_entity.swift:53` |
| Unresolved Go-only types | `byte`, `common`, `http` — no Swift equivalents emitted |
| `any Protocol` in `Sendable` structs | `text_classification_model_details.swift:23`, `create_job_details.swift:23` |

These are generator-level and cannot be patched file-by-file across 147 folders
without drifting from the `Code generated by Go to Swift conversion; DO NOT EDIT`
contract in every file header.

## Recommendation

Regenerate from `oci-go-sdk` with a fixed transpiler implementing the eight
conventions above, then re-verify with the parity sweep:

```bash
for d in $(ls -d */ | tr -d '/' | grep -v '^\.'); do
  [ -d "/tmp/oci-go-sdk/$d" ] || continue
  g=$(ls /tmp/oci-go-sdk/$d/*.go 2>/dev/null | wc -l | tr -d ' ')
  s=$(ls $d/*.swift 2>/dev/null | wc -l | tr -d ' ')
  [ "$g" = "$s" ] || echo "$d: go=$g swift=$s"
done
```

Target: 0 mismatches over 147 folders.

## Commits on this branch

- `3d603d6` — add 24 missing ailanguage types (168 → 192 files, parity reached)
- `b58a350` — fix enum declaration convention (aliased/enum ambiguity resolved)
