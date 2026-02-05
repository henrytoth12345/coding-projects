// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CoolSwiftApp",
    platforms: [
        .iOS(.v16),
        .macOS(.v13)
    ],
    products: [
        .executable(name: "CoolSwiftApp", targets: ["CoolSwiftApp"])
    ],
    targets: [
        .executableTarget(
            name: "CoolSwiftApp",
            path: "Sources"
        )
    ]
)
