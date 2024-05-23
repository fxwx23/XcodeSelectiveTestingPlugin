import Foundation
import PackagePlugin

@main
struct XcodeSelectiveTestingPlugin: CommandPlugin {
    func performCommand(context: PluginContext, arguments: [String]) async throws {
        let xcodeSelectiveTest = try context.tool(named: "xcode-selective-test").path.string
        let xcodeSelectiveTestURL = URL(fileURLWithPath: xcodeSelectiveTest, isDirectory: false)

        let process = try Process.run(xcodeSelectiveTestURL, arguments: arguments)
        process.waitUntilExit()

        if process.terminationReason != .exit || process.terminationStatus != 0 {
            Diagnostics.error("The plugin execution failed: \(process.terminationReason.rawValue) (\(process.terminationStatus))")
        }
    }
}
