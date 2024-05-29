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
            url: "https://github.com/mikeger/XcodeSelectiveTesting/releases/download/0.9.4/xcode-selective-test.artifactbundle.zip",
            checksum: "5814465535721294bb46a488d63fa0f2eb989428495bfb4c7b294b0b0eae53af"
        )
    ]
)
