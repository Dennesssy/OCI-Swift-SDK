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
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .target(
            name: "OCI-Swift-SDK",
            dependencies: [
                "OCICommon",
                "AccessGovernanceCP"
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
