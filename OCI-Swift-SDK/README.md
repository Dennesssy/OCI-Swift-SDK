# Oracle Cloud Infrastructure Swift SDK

A native Swift SDK for [Oracle Cloud Infrastructure][1], independently developed by a self-taught solo engineer.

Oracle provides official SDKs for Go, Python, Java, Ruby, and TypeScript — but not Swift. This project fills that gap, covering 130+ OCI services with Swift 6 strict concurrency and Swift Package Manager support.

> **Note:** This is an independent, community-maintained SDK and is not affiliated with or endorsed by Oracle Corp.

---

## Supported Platforms

| Platform | Minimum Version |
|---|---|
| macOS | 14 |
| iOS | 17 |
| tvOS | 17 |
| watchOS | 10 |
| Mac Catalyst | 17 |

---

## Requirements

- Swift 6.0+
- Xcode 16+
- An [OCI account][2] with API key credentials

---

## Installation

### Swift Package Manager

```swift
// Package.swift
dependencies: [
    .package(url: "https://github.com/Dennesssy/OCI-Swift-SDK.git", from: "1.0.0")
]
```

### Xcode

**File → Add Package Dependencies** → paste the repository URL → select version.

---

## Configuration

You will need:

- Tenancy OCID
- User OCID
- API Key Fingerprint
- Private Key (PEM)
- Region identifier (e.g. `us-ashburn-1`)

See [SDK and Tool Configuration][3] in the OCI documentation for setup instructions.

---

## Usage

```swift
import OCICommon
import objectstorage

let config = OCIConfig(
    tenancyId: "ocid1.tenancy.oc1...",
    userId: "ocid1.user.oc1...",
    fingerprint: "xx:xx:xx:...",
    privateKeyPath: "~/.oci/oci_api_key.pem",
    region: "us-ashburn-1"
)

let client = ObjectstorageClient(config: config)

let response = try await client.listBuckets(
    namespaceName: "myNamespace",
    compartmentId: "ocid1.compartment.oc1..."
)
```

---

## SDK Organization

```
OCI-Swift-SDK/
├── common/          # Auth, HTTP signing, shared types
├── Sources/         # Main library entry point
├── Tests/
├── core/            # Compute, VCN, Block Storage
├── identity/        # IAM, Users, Groups, Policies
├── objectstorage/
├── database/
├── generativeai/
├── monitoring/
├── vault/
└── ...              # 130+ service modules
```

Each service folder maps 1:1 to an OCI service and contains a `*_client.swift`, request/response structs, and model types.

---

## Services

<details>
<summary>View all 130+ supported services</summary>

| Category | Services |
|---|---|
| AI / ML | `ailanguage` `aivision` `aispeech` `aianomalydetection` `aidocument` `generativeai` `generativeaiinference` |
| Compute | `core` `computeinstanceagent` `computecloudatcustomer` `containerengine` `containerinstances` |
| Networking | `core` `dns` `loadbalancer` `networkloadbalancer` `networkfirewall` `vnmonitoring` |
| Storage | `objectstorage` `filestorage` `nosql` `streaming` |
| Database | `database` `databasemanagement` `databasemigration` `mysql` `psql` `nosql` |
| Identity & Security | `identitydomains` `vault` `keymanagement` `secrets` `datasafe` `cloudguard` `lockbox` |
| Observability | `monitoring` `logging` `loggingingestion` `loggingsearch` `apmcontrolplane` |
| Developer Services | `functions` `events` `resourcemanager` `visualbuilder` `integration` |
| Billing & Cost | `budget` `limits` `usageapi` `usage` `osubsubscription` |
| Other | `redis` `opensearch` `queue` `ons` `email` `threatintelligence` `marketplace` + more |

</details>

---

## Contributing

Contributions are welcome. Open an [issue][4] for bugs or missing service coverage, or submit a pull request.

---

## Help

- [OCI Documentation][5]
- [OCI API Reference][6]
- [Stack Overflow — oracle-cloud-infrastructure][7]
- [Open an issue][4]

---

## Security

Never commit OCI credentials or private keys to source control. Use `~/.oci/config` or environment variables.

---

## About

This SDK was built entirely by a single self-taught developer — no team, no formal training, no institutional support. Every service module, type, and client was researched and written independently using OCI's public API documentation.

If this project saves you time, consider [sponsoring its development][8].

---

## License

Copyright (c) 2026 Dennesssy. Licensed under the [MIT License](LICENSE).

Oracle Cloud Infrastructure is a trademark of Oracle Corporation. This project is not affiliated with or endorsed by Oracle.

---

## Changelog

See [CHANGELOG.md](CHANGELOG.md).

[1]: https://www.oracle.com/cloud/
[2]: https://www.oracle.com/cloud/free/
[3]: https://docs.oracle.com/en-us/iaas/Content/API/Concepts/sdkconfig.htm
[4]: https://github.com/Dennesssy/OCI-Swift-SDK/issues
[5]: https://docs.oracle.com/en-us/iaas/Content/home.htm
[6]: https://docs.oracle.com/en-us/iaas/api/
[7]: https://stackoverflow.com/questions/tagged/oracle-cloud-infrastructure
[8]: https://github.com/sponsors/Dennesssy
