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
    dependencies: [],
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
            name: "adm",
            dependencies: ["OCICommon"],
            path: "adm",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "aianomalydetection",
            dependencies: ["OCICommon"],
            path: "aianomalydetection",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "aidocument",
            dependencies: ["OCICommon"],
            path: "aidocument",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "ailanguage",
            dependencies: ["OCICommon"],
            path: "ailanguage",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "aispeech",
            dependencies: ["OCICommon"],
            path: "aispeech",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "aivision",
            dependencies: ["OCICommon"],
            path: "aivision",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "analytics",
            dependencies: ["OCICommon"],
            path: "analytics",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "announcementsservice",
            dependencies: ["OCICommon"],
            path: "announcementsservice",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "apmconfig",
            dependencies: ["OCICommon"],
            path: "apmconfig",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "apmcontrolplane",
            dependencies: ["OCICommon"],
            path: "apmcontrolplane",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "appmgmtcontrol",
            dependencies: ["OCICommon"],
            path: "appmgmtcontrol",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "audit",
            dependencies: ["OCICommon"],
            path: "audit",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "autoscaling",
            dependencies: ["OCICommon"],
            path: "autoscaling",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "bastion",
            dependencies: ["OCICommon"],
            path: "bastion",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "bds",
            dependencies: ["OCICommon"],
            path: "bds",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "blockchain",
            dependencies: ["OCICommon"],
            path: "blockchain",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "budget",
            dependencies: ["OCICommon"],
            path: "budget",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "capacitymanagement",
            dependencies: ["OCICommon"],
            path: "capacitymanagement",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "certificates",
            dependencies: ["OCICommon"],
            path: "certificates",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "certificatesmanagement",
            dependencies: ["OCICommon"],
            path: "certificatesmanagement",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "cims",
            dependencies: ["OCICommon"],
            path: "cims",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "cloudbridge",
            dependencies: ["OCICommon"],
            path: "cloudbridge",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "cloudguard",
            dependencies: ["OCICommon"],
            path: "cloudguard",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "cloudmigrations",
            dependencies: ["OCICommon"],
            path: "cloudmigrations",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "clusterplacementgroups",
            dependencies: ["OCICommon"],
            path: "clusterplacementgroups",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "computecloudatcustomer",
            dependencies: ["OCICommon"],
            path: "computecloudatcustomer",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "computeinstanceagent",
            dependencies: ["OCICommon"],
            path: "computeinstanceagent",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "containerengine",
            dependencies: ["OCICommon"],
            path: "containerengine",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "containerinstances",
            dependencies: ["OCICommon"],
            path: "containerinstances",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "core",
            dependencies: ["OCICommon"],
            path: "core",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "dashboardservice",
            dependencies: ["OCICommon"],
            path: "dashboardservice",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "database",
            dependencies: ["OCICommon"],
            path: "database",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "databasemanagement",
            dependencies: ["OCICommon"],
            path: "databasemanagement",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "databasemigration",
            dependencies: ["OCICommon"],
            path: "databasemigration",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "databasetools",
            dependencies: ["OCICommon"],
            path: "databasetools",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "datacatalog",
            dependencies: ["OCICommon"],
            path: "datacatalog",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "dataflow",
            dependencies: ["OCICommon"],
            path: "dataflow",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "dataintegration",
            dependencies: ["OCICommon"],
            path: "dataintegration",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "datalabelingservice",
            dependencies: ["OCICommon"],
            path: "datalabelingservice",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "datalabelingservicedataplane",
            dependencies: ["OCICommon"],
            path: "datalabelingservicedataplane",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "datasafe",
            dependencies: ["OCICommon"],
            path: "datasafe",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "datascience",
            dependencies: ["OCICommon"],
            path: "datascience",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "demandsignal",
            dependencies: ["OCICommon"],
            path: "demandsignal",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "desktops",
            dependencies: ["OCICommon"],
            path: "desktops",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "disasterrecovery",
            dependencies: ["OCICommon"],
            path: "disasterrecovery",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "dns",
            dependencies: ["OCICommon"],
            path: "dns",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "dts",
            dependencies: ["OCICommon"],
            path: "dts",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "email",
            dependencies: ["OCICommon"],
            path: "email",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "emaildataplane",
            dependencies: ["OCICommon"],
            path: "emaildataplane",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "emwarehouse",
            dependencies: ["OCICommon"],
            path: "emwarehouse",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "events",
            dependencies: ["OCICommon"],
            path: "events",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "filestorage",
            dependencies: ["OCICommon"],
            path: "filestorage",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "fleetappsmanagement",
            dependencies: ["OCICommon"],
            path: "fleetappsmanagement",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "fleetsoftwareupdate",
            dependencies: ["OCICommon"],
            path: "fleetsoftwareupdate",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "functions",
            dependencies: ["OCICommon"],
            path: "functions",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "fusionapps",
            dependencies: ["OCICommon"],
            path: "fusionapps",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "generativeai",
            dependencies: ["OCICommon"],
            path: "generativeai",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "generativeaiinference",
            dependencies: ["OCICommon"],
            path: "generativeaiinference",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "genericartifactscontent",
            dependencies: ["OCICommon"],
            path: "genericartifactscontent",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "globallydistributeddatabase",
            dependencies: ["OCICommon"],
            path: "globallydistributeddatabase",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "goldengate",
            dependencies: ["OCICommon"],
            path: "goldengate",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "governancerulescontrolplane",
            dependencies: ["OCICommon"],
            path: "governancerulescontrolplane",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "healthchecks",
            dependencies: ["OCICommon"],
            path: "healthchecks",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "identitydataplane",
            dependencies: ["OCICommon"],
            path: "identitydataplane",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "identitydomains",
            dependencies: ["OCICommon"],
            path: "identitydomains",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "integration",
            dependencies: ["OCICommon"],
            path: "integration",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "jms",
            dependencies: ["OCICommon"],
            path: "jms",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "jmsjavadownloads",
            dependencies: ["OCICommon"],
            path: "jmsjavadownloads",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "keymanagement",
            dependencies: ["OCICommon"],
            path: "keymanagement",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "licensemanager",
            dependencies: ["OCICommon"],
            path: "licensemanager",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "limits",
            dependencies: ["OCICommon"],
            path: "limits",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "loadbalancer",
            dependencies: ["OCICommon"],
            path: "loadbalancer",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "lockbox",
            dependencies: ["OCICommon"],
            path: "lockbox",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "loganalytics",
            dependencies: ["OCICommon"],
            path: "loganalytics",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "logging",
            dependencies: ["OCICommon"],
            path: "logging",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "loggingingestion",
            dependencies: ["OCICommon"],
            path: "loggingingestion",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "loggingsearch",
            dependencies: ["OCICommon"],
            path: "loggingsearch",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "managementagent",
            dependencies: ["OCICommon"],
            path: "managementagent",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "managementdashboard",
            dependencies: ["OCICommon"],
            path: "managementdashboard",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "marketplace",
            dependencies: ["OCICommon"],
            path: "marketplace",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "marketplaceprivateoffer",
            dependencies: ["OCICommon"],
            path: "marketplaceprivateoffer",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "marketplacepublisher",
            dependencies: ["OCICommon"],
            path: "marketplacepublisher",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "mediaservices",
            dependencies: ["OCICommon"],
            path: "mediaservices",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "monitoring",
            dependencies: ["OCICommon"],
            path: "monitoring",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "mysql",
            dependencies: ["OCICommon"],
            path: "mysql",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "networkfirewall",
            dependencies: ["OCICommon"],
            path: "networkfirewall",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "networkloadbalancer",
            dependencies: ["OCICommon"],
            path: "networkloadbalancer",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "nosql",
            dependencies: ["OCICommon"],
            path: "nosql",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "objectstorage",
            dependencies: ["OCICommon"],
            path: "objectstorage",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "oce",
            dependencies: ["OCICommon"],
            path: "oce",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "ocicontrolcenter",
            dependencies: ["OCICommon"],
            path: "ocicontrolcenter",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "ocvp",
            dependencies: ["OCICommon"],
            path: "ocvp",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "oda",
            dependencies: ["OCICommon"],
            path: "oda",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "onesubscription",
            dependencies: ["OCICommon"],
            path: "onesubscription",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "ons",
            dependencies: ["OCICommon"],
            path: "ons",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "opa",
            dependencies: ["OCICommon"],
            path: "opa",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "opensearch",
            dependencies: ["OCICommon"],
            path: "opensearch",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "operatoraccesscontrol",
            dependencies: ["OCICommon"],
            path: "operatoraccesscontrol",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "opsi",
            dependencies: ["OCICommon"],
            path: "opsi",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "optimizer",
            dependencies: ["OCICommon"],
            path: "optimizer",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "osmanagement",
            dependencies: ["OCICommon"],
            path: "osmanagement",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "osmanagementhub",
            dependencies: ["OCICommon"],
            path: "osmanagementhub",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "ospgateway",
            dependencies: ["OCICommon"],
            path: "ospgateway",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "osubbillingschedule",
            dependencies: ["OCICommon"],
            path: "osubbillingschedule",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "osuborganizationsubscription",
            dependencies: ["OCICommon"],
            path: "osuborganizationsubscription",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "osubsubscription",
            dependencies: ["OCICommon"],
            path: "osubsubscription",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "osubusage",
            dependencies: ["OCICommon"],
            path: "osubusage",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "psql",
            dependencies: ["OCICommon"],
            path: "psql",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "queue",
            dependencies: ["OCICommon"],
            path: "queue",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "recovery",
            dependencies: ["OCICommon"],
            path: "recovery",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "redis",
            dependencies: ["OCICommon"],
            path: "redis",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "resourcemanager",
            dependencies: ["OCICommon"],
            path: "resourcemanager",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "resourcescheduler",
            dependencies: ["OCICommon"],
            path: "resourcescheduler",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "resourcesearch",
            dependencies: ["OCICommon"],
            path: "resourcesearch",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "rover",
            dependencies: ["OCICommon"],
            path: "rover",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "sch",
            dependencies: ["OCICommon"],
            path: "sch",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "secrets",
            dependencies: ["OCICommon"],
            path: "secrets",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "servicecatalog",
            dependencies: ["OCICommon"],
            path: "servicecatalog",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "servicemanagerproxy",
            dependencies: ["OCICommon"],
            path: "servicemanagerproxy",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "servicemesh",
            dependencies: ["OCICommon"],
            path: "servicemesh",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "stackmonitoring",
            dependencies: ["OCICommon"],
            path: "stackmonitoring",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "streaming",
            dependencies: ["OCICommon"],
            path: "streaming",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "tenantmanagercontrolplane",
            dependencies: ["OCICommon"],
            path: "tenantmanagercontrolplane",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "threatintelligence",
            dependencies: ["OCICommon"],
            path: "threatintelligence",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "usage",
            dependencies: ["OCICommon"],
            path: "usage",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "usageapi",
            dependencies: ["OCICommon"],
            path: "usageapi",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "vault",
            dependencies: ["OCICommon"],
            path: "vault",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "vbsinst",
            dependencies: ["OCICommon"],
            path: "vbsinst",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "visualbuilder",
            dependencies: ["OCICommon"],
            path: "visualbuilder",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "vnmonitoring",
            dependencies: ["OCICommon"],
            path: "vnmonitoring",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "vulnerabilityscanning",
            dependencies: ["OCICommon"],
            path: "vulnerabilityscanning",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "waa",
            dependencies: ["OCICommon"],
            path: "waa",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "waas",
            dependencies: ["OCICommon"],
            path: "waas",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "waf",
            dependencies: ["OCICommon"],
            path: "waf",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "workrequests",
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
                "adm",
                "aianomalydetection",
                "aidocument",
                "ailanguage",
                "aispeech",
                "aivision",
                "analytics",
                "announcementsservice",
                "apmconfig",
                "apmcontrolplane",
                "appmgmtcontrol",
                "audit",
                "autoscaling",
                "bastion",
                "bds",
                "blockchain",
                "budget",
                "capacitymanagement",
                "certificates",
                "certificatesmanagement",
                "cims",
                "cloudbridge",
                "cloudguard",
                "cloudmigrations",
                "clusterplacementgroups",
                "computecloudatcustomer",
                "computeinstanceagent",
                "containerengine",
                "containerinstances",
                "core",
                "dashboardservice",
                "database",
                "databasemanagement",
                "databasemigration",
                "databasetools",
                "datacatalog",
                "dataflow",
                "dataintegration",
                "datalabelingservice",
                "datalabelingservicedataplane",
                "datasafe",
                "datascience",
                "demandsignal",
                "desktops",
                "disasterrecovery",
                "dns",
                "dts",
                "email",
                "emaildataplane",
                "emwarehouse",
                "events",
                "filestorage",
                "fleetappsmanagement",
                "fleetsoftwareupdate",
                "functions",
                "fusionapps",
                "generativeai",
                "generativeaiinference",
                "genericartifactscontent",
                "globallydistributeddatabase",
                "goldengate",
                "governancerulescontrolplane",
                "healthchecks",
                "identitydataplane",
                "identitydomains",
                "integration",
                "jms",
                "jmsjavadownloads",
                "keymanagement",
                "licensemanager",
                "limits",
                "loadbalancer",
                "lockbox",
                "loganalytics",
                "logging",
                "loggingingestion",
                "loggingsearch",
                "managementagent",
                "managementdashboard",
                "marketplace",
                "marketplaceprivateoffer",
                "marketplacepublisher",
                "mediaservices",
                "monitoring",
                "mysql",
                "networkfirewall",
                "networkloadbalancer",
                "nosql",
                "objectstorage",
                "oce",
                "ocicontrolcenter",
                "ocvp",
                "oda",
                "onesubscription",
                "ons",
                "opa",
                "opensearch",
                "operatoraccesscontrol",
                "opsi",
                "optimizer",
                "osmanagement",
                "osmanagementhub",
                "ospgateway",
                "osubbillingschedule",
                "osuborganizationsubscription",
                "osubsubscription",
                "osubusage",
                "psql",
                "queue",
                "recovery",
                "redis",
                "resourcemanager",
                "resourcescheduler",
                "resourcesearch",
                "rover",
                "sch",
                "secrets",
                "servicecatalog",
                "servicemanagerproxy",
                "servicemesh",
                "stackmonitoring",
                "streaming",
                "tenantmanagercontrolplane",
                "threatintelligence",
                "usage",
                "usageapi",
                "vault",
                "vbsinst",
                "visualbuilder",
                "vnmonitoring",
                "vulnerabilityscanning",
                "waa",
                "waas",
                "waf",
                "workrequests"
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
