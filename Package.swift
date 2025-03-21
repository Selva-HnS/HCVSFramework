// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HCVSFramework",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "HCVSFramework",
            targets: ["HCVSFramework"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "HCVSFramework",
            dependencies: ["CVSInference"]),
        .binaryTarget(
                    name: "CVSInference",
                    path: "./Sources/CVSInference.xcframework"
                ),
        .testTarget(
            name: "HCVSFrameworkTests",
            dependencies: ["HCVSFramework"]
        ),
    ]
)
