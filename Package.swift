// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "XcodeSelectiveTestingPlugin",
    products: [
        .plugin(name: "XcodeSelectiveTestingPlugin", targets: ["XcodeSelectiveTestingPlugin"])
    ],
    dependencies: [],
    targets: [
        .plugin(
            name: "XcodeSelectiveTestingPlugin",
            capability: .command(
                intent: .custom(verb: "xcode-selective-test", description: "Run xcode-selective-test"),
                permissions: []
            ),
            dependencies: ["xcode-selective-test"]
        ),
        .binaryTarget(
            name: "xcode-selective-test",
            url: "https://github.com/mikeger/XcodeSelectiveTesting/releases/download/0.10.5/xcode-selective-test.artifactbundle.zip",
            checksum: "f58e4fbc6bb59f64fe8c34f3a1d090b7e41ff36ca6b1959cd45b1b9dc6a84c2f"
        )
    ]
)
