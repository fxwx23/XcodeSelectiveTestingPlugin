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
            url: "https://github.com/fxwx23/XcodeSelectiveTesting/releases/download/0.0.0/xcode-selective-test.artifactbundle.zip",
            checksum: "fcea0fbc62b91e7bea2e4cb120929d753d22054866b6bab758e1057f99e40b98"
        ),
    ]
)
