// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "DevMumbles",
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/Kitura", from: "2.7.0")
    ],
    targets: [
        .target(
            name: "DevMumbles",
            dependencies: ["Kitura"],
            path: "Sources"),
        .testTarget(
            name: "DevMumblesTests",
            dependencies: ["DevMumbles"]),
    ]
)
