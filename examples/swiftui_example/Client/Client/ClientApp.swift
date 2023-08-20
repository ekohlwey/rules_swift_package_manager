//

import SwiftUI
import OSLog

@main
struct TestApp: App {

    var body: some Scene {
        let content = Content()
        WindowGroup {
          ContentView(content:content)
        }
    }

}

extension Logger {
  private static var subsystem = Bundle.main.bundleIdentifier!
  static let model = Logger(subsystem: subsystem, category: "model")
  static let service = Logger(subsystem: subsystem, category: "service")
}
