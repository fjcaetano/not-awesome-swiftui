import SwiftUI

@main
struct iOSApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                NavigationLink("Nested button style", destination: NestedButtonStyleExample())
            }
        }
    }
}
