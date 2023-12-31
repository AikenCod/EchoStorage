// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EchoStorage",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "EchoStorage",
            targets: ["EchoStorage"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "EchoStorage",
            dependencies: ["WCDBSwift", "sqlcipher"]),
        .binaryTarget(name: "WCDBSwift",
                      path: "Frameworks/WCDBSwift.xcframework"),
        .binaryTarget(name: "sqlcipher",
                      path: "Frameworks/sqlcipher.xcframework"),
        .testTarget(
            name: "EchoStorageTests",
            dependencies: ["EchoStorage"]),
    ],
    swiftLanguageVersions: [.v5]
)
