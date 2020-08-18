// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "EastAsianWidth",
    products: [
        .library(name: "EastAsianWidth", targets: ["EastAsianWidth"]),
    ],
    targets: [
        .target(name: "EastAsianWidth", dependencies: [], path: "Sources"),
        .testTarget(name: "EastAsianWidthTests", dependencies: []),
    ]
)
