// swift-tools-version:6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let generatedServiceTargets: [(name: String, path: String)] = [
    ("Ailanguage", "ailanguage"),
    ("AnnouncementsService", "announcementsservice"),
    ("Analytics", "analytics"),
    ("ApmConfig", "apmconfig"),
    ("Audit", "audit"),
    ("Bastion", "bastion"),
    ("Bds", "bds"),
    ("Blockchain", "blockchain"),
    ("Certificates", "certificates"),
    ("CertificatesManagement", "certificatesmanagement"),
    ("Cims", "cims"),
    ("CloudBridge", "cloudbridge"),
    ("CloudGuard", "cloudguard"),
    ("CloudMigrations", "cloudmigrations"),
    ("ComputeCloudAtCustomer", "computecloudatcustomer"),
    ("ComputeInstanceAgent", "computeinstanceagent"),
    ("ContainerInstances", "containerinstances"),
    ("CapacityManagement", "capacitymanagement"),
    ("Database", "database"),
    ("DatabaseManagement", "databasemanagement"),
    ("DatabaseMigration", "databasemigration"),
    ("DatabaseTools", "databasetools"),
    ("DataCatalog", "datacatalog"),
    ("DataFlow", "dataflow"),
    ("DataIntegration", "dataintegration"),
    ("DataSafe", "datasafe"),
    ("DataScience", "datascience"),
    ("DataLabelingService", "datalabelingservice"),
    ("DataLabelingServiceDataPlane", "datalabelingservicedataplane"),
    ("Desktops", "desktops"),
    ("DisasterRecovery", "disasterrecovery"),
    ("Dts", "dts"),
    ("Events", "events"),
    ("Email", "email"),
    ("EmailDataPlane", "emaildataplane"),
    ("EmWarehouse", "emwarehouse"),
    ("FleetAppsManagement", "fleetappsmanagement"),
    ("FleetSoftwareUpdate", "fleetsoftwareupdate"),
    ("FusionApps", "fusionapps"),
    ("GenerativeAi", "generativeai"),
    ("GenerativeAiInference", "generativeaiinference"),
    ("GloballyDistributedDatabase", "globallydistributeddatabase"),
    ("GoldenGate", "goldengate"),
    ("GovernanceRulesControlPlane", "governancerulescontrolplane"),
    ("IdentityDataPlane", "identitydataplane"),
    ("IdentityDomains", "identitydomains"),
    ("Integration", "integration"),
    ("Jms", "jms"),
    ("JmsJavaDownloads", "jmsjavadownloads"),
    ("LicenseManager", "licensemanager"),
    ("Lockbox", "lockbox"),
    ("LogAnalytics", "loganalytics"),
    ("LoggingIngestion", "loggingingestion"),
    ("ManagementAgent", "managementagent"),
    ("Marketplace", "marketplace"),
    ("MarketplacePublisher", "marketplacepublisher"),
    ("MediaServices", "mediaservices"),
    ("Mysql", "mysql"),
    ("Monitoring", "monitoring"),
    ("NetworkFirewall", "networkfirewall"),
    ("OciControlCenter", "ocicontrolcenter"),
    ("Ocvp", "ocvp"),
    ("Oda", "oda"),
    ("OneSubscription", "onesubscription"),
    ("OpenSearch", "opensearch"),
    ("OperatorAccessControl", "operatoraccesscontrol"),
    ("Opsi", "opsi"),
    ("Optimizer", "optimizer"),
    ("OsManagement", "osmanagement"),
    ("OsManagementHub", "osmanagementhub"),
    ("OspGateway", "ospgateway"),
    ("OsubSubscription", "osubsubscription"),
    ("Psql", "psql"),
    ("Queue", "queue"),
    ("Recovery", "recovery"),
    ("ResourceManager", "resourcemanager"),
    ("ResourceSearch", "resourcesearch"),
    ("Rover", "rover"),
    ("Sch", "sch"),
    ("ServiceCatalog", "servicecatalog"),
    ("ServiceMesh", "servicemesh"),
    ("StackMonitoring", "stackmonitoring"),
    ("Streaming", "streaming"),
    ("TenantManagerControlPlane", "tenantmanagercontrolplane"),
    ("ThreatIntelligence", "threatintelligence"),
    ("Usage", "usage"),
    ("UsageApi", "usageapi"),
    ("Vault", "vault"),
    ("VbsInst", "vbsinst"),
    ("VisualBuilder", "visualbuilder"),
    ("VnMonitoring", "vnmonitoring"),
    ("VulnerabilityScanning", "vulnerabilityscanning"),
    ("Waa", "waa"),
    ("Waas", "waas"),
    ("Waf", "waf"),
    ("WorkRequests", "workrequests")
]

let generatedServiceProducts: [Product] = generatedServiceTargets.map {
    .library(name: $0.name, targets: [$0.name])
}

let generatedServiceTargetDependencies: [Target.Dependency] = generatedServiceTargets.map {
    .target(name: $0.name)
}

let generatedServiceTargetDefinitions: [Target] = generatedServiceTargets.map {
        .target(
            name: $0.name,
            dependencies: ["OCICommon"],
            path: $0.path,
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        )
    }

let package = Package(
    name: "OCI-Swift-SDK",
    platforms: [
        .macOS(.v14),
        .iOS(.v17),
        .tvOS(.v17),
        .watchOS(.v10),
        .macCatalyst(.v17)
    ],
    products: [
        .library(
            name: "OCI-Swift-SDK",
            targets: ["OCI-Swift-SDK"]
        ),
        .library(
            name: "OCICommon",
            targets: ["OCICommon"]
        ),
        .library(
            name: "AccessGovernanceCP",
            targets: ["AccessGovernanceCP"]
        )
    ] + generatedServiceProducts,
    dependencies: [
        // Add dependencies here as needed
        // .package(url: "https://github.com/apple/swift-nio.git", from: "2.0.0"),
    ],
    targets: [
        .target(
            name: "OCICommon",
            path: "common",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "AccessGovernanceCP",
            dependencies: ["OCICommon"],
            path: "accessgovernancecp",
            exclude: [
                "instance_lifecycle_state_enum.swift",
                "license_type_enum.swift",
                "list_governance_instances_sort_by_enum.swift",
                "list_governance_instances_sort_order_enum.swift",
                "sort_order_enum.swift"
            ],
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "OCI-Swift-SDK",
            dependencies: [
                "OCICommon",
                "AccessGovernanceCP"
            ] + generatedServiceTargetDependencies,
            path: "Sources",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "OCI-Swift-SDKTests",
            dependencies: ["OCI-Swift-SDK"],
            path: "Tests"
        )
    ] + generatedServiceTargetDefinitions
)
