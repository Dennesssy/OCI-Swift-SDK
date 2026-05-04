// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "OCI-Tenant-Dashboard",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .executable(
            name: "OCIDashboard",
            targets: ["OCIDashboard"]
        )
    ],
    dependencies: [
        .package(
            path: "../OCI-Swift-SDK"
        )
    ],
    targets: [
        .executableTarget(
            name: "OCIDashboard",
            dependencies: [
                .product(name: "OCI-Swift-SDK", package: "OCI-Swift-SDK")
            ],
            path: "Sources",
            resources: [
                .copy("WebApp")
            ],
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        )
    ]
)