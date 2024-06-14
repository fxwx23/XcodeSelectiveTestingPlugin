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
            url: "https://github.com/mikeger/XcodeSelectiveTesting/releases/download/0.9.6/xcode-selective-test.artifactbundle.zip",
            checksum: "cd434a80775aafa9bc79211f266178f639a90520707b5c418dd265f6fdfd6824"
        )
    ]
)
