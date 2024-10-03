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
            url: "https://github.com/mikeger/XcodeSelectiveTesting/releases/download/0.10.4/xcode-selective-test.artifactbundle.zip",
            checksum: "ace369a0ef046f0133df70767fb8fadb89f93fccc5302f96439d69cf0058ac19"
        )
    ]
)
