// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HCVSFramework",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "HCVSFramework",
            targets: ["HCVSFramework"]
        ),
    ],
    dependencies: [
        // Add any other dependencies here
    ],
    targets: [
        .binaryTarget(
            name: "CVSInference",
            path: "./CVSInference.xcframework"
        ),
        .target(
            name: "HCVSFramework",
            dependencies: ["CVSInference"]
        ),
        .testTarget(
            name: "MyPackageTests",
            dependencies: ["HCVSFramework"]
        ),
    ]
)
