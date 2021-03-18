import SwiftUI

@main
struct macOSApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                List {
                    NavigationLink("Cursor unreliable", destination: CursorUnreliableView())

                    NavigationLink("Nested Hovers", destination: NestedHoverView())
                }
            }
        }
    }
}
