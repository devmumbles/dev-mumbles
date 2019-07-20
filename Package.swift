// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "DevMumbles",
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/Kitura", from: "2.7.0"),
        .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", from: "1.8.1"),
        .package(url: "https://github.com/Quick/Quick.git", from: "2.1.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "8.0.2"),
    ],
    targets: [
        .target(
            name: "DevMumbles",
            dependencies: ["Kitura", "HeliumLogger"],
            path: "Sources"),
        .testTarget(
            name: "DevMumblesTests",
            dependencies: ["DevMumbles", "Quick", "Nimble"]),
    ]
)
