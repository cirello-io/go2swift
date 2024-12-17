// swift-tools-version:6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "go2swift",
    products: [
        .library(name: "go2swift", type: .dynamic, targets: ["go2swift"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "go2swift", dependencies: []),
        .testTarget(name: "go2swiftTests", dependencies: ["go2swift"]),
    ]
)
