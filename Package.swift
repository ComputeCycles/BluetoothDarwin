// swift-tools-version:5.0
import PackageDescription

_ = Package(name: "BluetoothDarwin",
            products: [
                .library(
                    name: "BluetoothDarwin",
                    targets: ["BluetoothDarwin"]
                )
            ],
            dependencies: [
                .package(url: "https://github.com/ComputeCycles/Bluetooth.git", .branch("swift5"))
            ],
            targets: [
                .target(name: "BluetoothDarwin", dependencies: ["Bluetooth", "CBluetoothDarwin"]),
                .target(name: "CBluetoothDarwin"),
                .testTarget(name: "BluetoothDarwinTests", dependencies: ["BluetoothDarwin"])
            ],
            swiftLanguageVersions: [.v5])
