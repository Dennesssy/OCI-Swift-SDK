// swift-tools-version:6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

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
    ],
    dependencies: [
        // Add dependencies here as needed
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
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Adm",
            dependencies: ["OCICommon"],
            path: "adm",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Aianomalydetection",
            dependencies: ["OCICommon"],
            path: "aianomalydetection",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Aidocument",
            dependencies: ["OCICommon"],
            path: "aidocument",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Ailanguage",
            dependencies: ["OCICommon"],
            path: "ailanguage",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Aispeech",
            dependencies: ["OCICommon"],
            path: "aispeech",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Aivision",
            dependencies: ["OCICommon"],
            path: "aivision",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Analytics",
            dependencies: ["OCICommon"],
            path: "analytics",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Announcementsservice",
            dependencies: ["OCICommon"],
            path: "announcementsservice",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Apmconfig",
            dependencies: ["OCICommon"],
            path: "apmconfig",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Apmcontrolplane",
            dependencies: ["OCICommon"],
            path: "apmcontrolplane",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Appmgmtcontrol",
            dependencies: ["OCICommon"],
            path: "appmgmtcontrol",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Audit",
            dependencies: ["OCICommon"],
            path: "audit",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Autoscaling",
            dependencies: ["OCICommon"],
            path: "autoscaling",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Bastion",
            dependencies: ["OCICommon"],
            path: "bastion",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Bds",
            dependencies: ["OCICommon"],
            path: "bds",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Blockchain",
            dependencies: ["OCICommon"],
            path: "blockchain",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Budget",
            dependencies: ["OCICommon"],
            path: "budget",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Capacitymanagement",
            dependencies: ["OCICommon"],
            path: "capacitymanagement",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Certificates",
            dependencies: ["OCICommon"],
            path: "certificates",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Certificatesmanagement",
            dependencies: ["OCICommon"],
            path: "certificatesmanagement",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Cims",
            dependencies: ["OCICommon"],
            path: "cims",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Cloudbridge",
            dependencies: ["OCICommon"],
            path: "cloudbridge",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Cloudguard",
            dependencies: ["OCICommon"],
            path: "cloudguard",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Cloudmigrations",
            dependencies: ["OCICommon"],
            path: "cloudmigrations",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Clusterplacementgroups",
            dependencies: ["OCICommon"],
            path: "clusterplacementgroups",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Computecloudatcustomer",
            dependencies: ["OCICommon"],
            path: "computecloudatcustomer",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Computeinstanceagent",
            dependencies: ["OCICommon"],
            path: "computeinstanceagent",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Containerengine",
            dependencies: ["OCICommon"],
            path: "containerengine",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Containerinstances",
            dependencies: ["OCICommon"],
            path: "containerinstances",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Core",
            dependencies: ["OCICommon"],
            path: "core",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Dashboardservice",
            dependencies: ["OCICommon"],
            path: "dashboardservice",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Database",
            dependencies: ["OCICommon"],
            path: "database",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Databasemanagement",
            dependencies: ["OCICommon"],
            path: "databasemanagement",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Databasemigration",
            dependencies: ["OCICommon"],
            path: "databasemigration",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Databasetools",
            dependencies: ["OCICommon"],
            path: "databasetools",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Datacatalog",
            dependencies: ["OCICommon"],
            path: "datacatalog",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Dataflow",
            dependencies: ["OCICommon"],
            path: "dataflow",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Dataintegration",
            dependencies: ["OCICommon"],
            path: "dataintegration",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Datalabelingservice",
            dependencies: ["OCICommon"],
            path: "datalabelingservice",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Datalabelingservicedataplane",
            dependencies: ["OCICommon"],
            path: "datalabelingservicedataplane",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Datasafe",
            dependencies: ["OCICommon"],
            path: "datasafe",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Datascience",
            dependencies: ["OCICommon"],
            path: "datascience",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Demandsignal",
            dependencies: ["OCICommon"],
            path: "demandsignal",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Desktops",
            dependencies: ["OCICommon"],
            path: "desktops",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Disasterrecovery",
            dependencies: ["OCICommon"],
            path: "disasterrecovery",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Dns",
            dependencies: ["OCICommon"],
            path: "dns",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Dts",
            dependencies: ["OCICommon"],
            path: "dts",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Email",
            dependencies: ["OCICommon"],
            path: "email",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Emaildataplane",
            dependencies: ["OCICommon"],
            path: "emaildataplane",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Emwarehouse",
            dependencies: ["OCICommon"],
            path: "emwarehouse",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Events",
            dependencies: ["OCICommon"],
            path: "events",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Filestorage",
            dependencies: ["OCICommon"],
            path: "filestorage",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Fleetappsmanagement",
            dependencies: ["OCICommon"],
            path: "fleetappsmanagement",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Fleetsoftwareupdate",
            dependencies: ["OCICommon"],
            path: "fleetsoftwareupdate",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Functions",
            dependencies: ["OCICommon"],
            path: "functions",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Fusionapps",
            dependencies: ["OCICommon"],
            path: "fusionapps",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Generativeai",
            dependencies: ["OCICommon"],
            path: "generativeai",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Generativeaiinference",
            dependencies: ["OCICommon"],
            path: "generativeaiinference",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Genericartifactscontent",
            dependencies: ["OCICommon"],
            path: "genericartifactscontent",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Globallydistributeddatabase",
            dependencies: ["OCICommon"],
            path: "globallydistributeddatabase",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Goldengate",
            dependencies: ["OCICommon"],
            path: "goldengate",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Governancerulescontrolplane",
            dependencies: ["OCICommon"],
            path: "governancerulescontrolplane",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Healthchecks",
            dependencies: ["OCICommon"],
            path: "healthchecks",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Identity",
            dependencies: ["OCICommon"],
            path: "identity",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Identitydataplane",
            dependencies: ["OCICommon"],
            path: "identitydataplane",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Identitydomains",
            dependencies: ["OCICommon"],
            path: "identitydomains",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Integration",
            dependencies: ["OCICommon"],
            path: "integration",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Jms",
            dependencies: ["OCICommon"],
            path: "jms",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Jmsjavadownloads",
            dependencies: ["OCICommon"],
            path: "jmsjavadownloads",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Keymanagement",
            dependencies: ["OCICommon"],
            path: "keymanagement",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Licensemanager",
            dependencies: ["OCICommon"],
            path: "licensemanager",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Limits",
            dependencies: ["OCICommon"],
            path: "limits",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Loadbalancer",
            dependencies: ["OCICommon"],
            path: "loadbalancer",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Lockbox",
            dependencies: ["OCICommon"],
            path: "lockbox",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Loganalytics",
            dependencies: ["OCICommon"],
            path: "loganalytics",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Logging",
            dependencies: ["OCICommon"],
            path: "logging",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Loggingingestion",
            dependencies: ["OCICommon"],
            path: "loggingingestion",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Loggingsearch",
            dependencies: ["OCICommon"],
            path: "loggingsearch",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Managementagent",
            dependencies: ["OCICommon"],
            path: "managementagent",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Managementdashboard",
            dependencies: ["OCICommon"],
            path: "managementdashboard",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Marketplace",
            dependencies: ["OCICommon"],
            path: "marketplace",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Marketplaceprivateoffer",
            dependencies: ["OCICommon"],
            path: "marketplaceprivateoffer",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Marketplacepublisher",
            dependencies: ["OCICommon"],
            path: "marketplacepublisher",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Mediaservices",
            dependencies: ["OCICommon"],
            path: "mediaservices",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Monitoring",
            dependencies: ["OCICommon"],
            path: "monitoring",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Mysql",
            dependencies: ["OCICommon"],
            path: "mysql",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Networkfirewall",
            dependencies: ["OCICommon"],
            path: "networkfirewall",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Networkloadbalancer",
            dependencies: ["OCICommon"],
            path: "networkloadbalancer",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Nosql",
            dependencies: ["OCICommon"],
            path: "nosql",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Objectstorage",
            dependencies: ["OCICommon"],
            path: "objectstorage",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Oce",
            dependencies: ["OCICommon"],
            path: "oce",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Ocicontrolcenter",
            dependencies: ["OCICommon"],
            path: "ocicontrolcenter",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Ocvp",
            dependencies: ["OCICommon"],
            path: "ocvp",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Oda",
            dependencies: ["OCICommon"],
            path: "oda",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Onesubscription",
            dependencies: ["OCICommon"],
            path: "onesubscription",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Ons",
            dependencies: ["OCICommon"],
            path: "ons",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Opa",
            dependencies: ["OCICommon"],
            path: "opa",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Opensearch",
            dependencies: ["OCICommon"],
            path: "opensearch",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Operatoraccesscontrol",
            dependencies: ["OCICommon"],
            path: "operatoraccesscontrol",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Opsi",
            dependencies: ["OCICommon"],
            path: "opsi",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Optimizer",
            dependencies: ["OCICommon"],
            path: "optimizer",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Osmanagement",
            dependencies: ["OCICommon"],
            path: "osmanagement",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Osmanagementhub",
            dependencies: ["OCICommon"],
            path: "osmanagementhub",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Ospgateway",
            dependencies: ["OCICommon"],
            path: "ospgateway",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Osubbillingschedule",
            dependencies: ["OCICommon"],
            path: "osubbillingschedule",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Osuborganizationsubscription",
            dependencies: ["OCICommon"],
            path: "osuborganizationsubscription",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Osubsubscription",
            dependencies: ["OCICommon"],
            path: "osubsubscription",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Osubusage",
            dependencies: ["OCICommon"],
            path: "osubusage",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Psql",
            dependencies: ["OCICommon"],
            path: "psql",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Queue",
            dependencies: ["OCICommon"],
            path: "queue",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Recovery",
            dependencies: ["OCICommon"],
            path: "recovery",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Redis",
            dependencies: ["OCICommon"],
            path: "redis",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Resourcemanager",
            dependencies: ["OCICommon"],
            path: "resourcemanager",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Resourcescheduler",
            dependencies: ["OCICommon"],
            path: "resourcescheduler",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Resourcesearch",
            dependencies: ["OCICommon"],
            path: "resourcesearch",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Rover",
            dependencies: ["OCICommon"],
            path: "rover",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Sch",
            dependencies: ["OCICommon"],
            path: "sch",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Secrets",
            dependencies: ["OCICommon"],
            path: "secrets",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Servicecatalog",
            dependencies: ["OCICommon"],
            path: "servicecatalog",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Servicemanagerproxy",
            dependencies: ["OCICommon"],
            path: "servicemanagerproxy",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Servicemesh",
            dependencies: ["OCICommon"],
            path: "servicemesh",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Stackmonitoring",
            dependencies: ["OCICommon"],
            path: "stackmonitoring",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Streaming",
            dependencies: ["OCICommon"],
            path: "streaming",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Tenantmanagercontrolplane",
            dependencies: ["OCICommon"],
            path: "tenantmanagercontrolplane",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Threatintelligence",
            dependencies: ["OCICommon"],
            path: "threatintelligence",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Usage",
            dependencies: ["OCICommon"],
            path: "usage",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Usageapi",
            dependencies: ["OCICommon"],
            path: "usageapi",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Vault",
            dependencies: ["OCICommon"],
            path: "vault",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Vbsinst",
            dependencies: ["OCICommon"],
            path: "vbsinst",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Visualbuilder",
            dependencies: ["OCICommon"],
            path: "visualbuilder",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Vnmonitoring",
            dependencies: ["OCICommon"],
            path: "vnmonitoring",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Vulnerabilityscanning",
            dependencies: ["OCICommon"],
            path: "vulnerabilityscanning",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Waa",
            dependencies: ["OCICommon"],
            path: "waa",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Waas",
            dependencies: ["OCICommon"],
            path: "waas",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Waf",
            dependencies: ["OCICommon"],
            path: "waf",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "Workrequests",
            dependencies: ["OCICommon"],
            path: "workrequests",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),

        .target(
            name: "OCI-Swift-SDK",
            dependencies: [
                "OCICommon",
                "AccessGovernanceCP",
                "Adm",
                "Aianomalydetection",
                "Aidocument",
                "Ailanguage",
                "Aispeech",
                "Aivision",
                "Analytics",
                "Announcementsservice",
                "Apmconfig",
                "Apmcontrolplane",
                "Appmgmtcontrol",
                "Audit",
                "Autoscaling",
                "Bastion",
                "Bds",
                "Blockchain",
                "Budget",
                "Capacitymanagement",
                "Certificates",
                "Certificatesmanagement",
                "Cims",
                "Cloudbridge",
                "Cloudguard",
                "Cloudmigrations",
                "Clusterplacementgroups",
                "Computecloudatcustomer",
                "Computeinstanceagent",
                "Containerengine",
                "Containerinstances",
                "Core",
                "Dashboardservice",
                "Database",
                "Databasemanagement",
                "Databasemigration",
                "Databasetools",
                "Datacatalog",
                "Dataflow",
                "Dataintegration",
                "Datalabelingservice",
                "Datalabelingservicedataplane",
                "Datasafe",
                "Datascience",
                "Demandsignal",
                "Desktops",
                "Disasterrecovery",
                "Dns",
                "Dts",
                "Email",
                "Emaildataplane",
                "Emwarehouse",
                "Events",
                "Filestorage",
                "Fleetappsmanagement",
                "Fleetsoftwareupdate",
                "Functions",
                "Fusionapps",
                "Generativeai",
                "Generativeaiinference",
                "Genericartifactscontent",
                "Globallydistributeddatabase",
                "Goldengate",
                "Governancerulescontrolplane",
                "Healthchecks",
                "Identity",
                "Identitydataplane",
                "Identitydomains",
                "Integration",
                "Jms",
                "Jmsjavadownloads",
                "Keymanagement",
                "Licensemanager",
                "Limits",
                "Loadbalancer",
                "Lockbox",
                "Loganalytics",
                "Logging",
                "Loggingingestion",
                "Loggingsearch",
                "Managementagent",
                "Managementdashboard",
                "Marketplace",
                "Marketplaceprivateoffer",
                "Marketplacepublisher",
                "Mediaservices",
                "Monitoring",
                "Mysql",
                "Networkfirewall",
                "Networkloadbalancer",
                "Nosql",
                "Objectstorage",
                "Oce",
                "Ocicontrolcenter",
                "Ocvp",
                "Oda",
                "Onesubscription",
                "Ons",
                "Opa",
                "Opensearch",
                "Operatoraccesscontrol",
                "Opsi",
                "Optimizer",
                "Osmanagement",
                "Osmanagementhub",
                "Ospgateway",
                "Osubbillingschedule",
                "Osuborganizationsubscription",
                "Osubsubscription",
                "Osubusage",
                "Psql",
                "Queue",
                "Recovery",
                "Redis",
                "Resourcemanager",
                "Resourcescheduler",
                "Resourcesearch",
                "Rover",
                "Sch",
                "Secrets",
                "Servicecatalog",
                "Servicemanagerproxy",
                "Servicemesh",
                "Stackmonitoring",
                "Streaming",
                "Tenantmanagercontrolplane",
                "Threatintelligence",
                "Usage",
                "Usageapi",
                "Vault",
                "Vbsinst",
                "Visualbuilder",
                "Vnmonitoring",
                "Vulnerabilityscanning",
                "Waa",
                "Waas",
                "Waf",
                "Workrequests"
            ],
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
    ]
)
