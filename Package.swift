// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "BrightnessToggle",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "BrightnessToggle",
            targets: ["BrightnessToggle"]
        )
    ],
    targets: [
        .target(
            name: "BrightnessToggle",
            path: "BrightnessToggle",
            publicHeadersPath: "."
        )
    ]
)
