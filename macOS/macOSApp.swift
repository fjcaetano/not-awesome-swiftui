import SwiftUI

@main
struct macOSApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                List {
                    NavigationLink("Cursor unreliable", destination: CursorUnreliableView())
                    NavigationLink("Nested Hovers", destination: NestedHoverView())
                    NavigationLink("Uppercased TextField", destination: UppercasedTextFieldView())
                    NavigationLink("TextField formatter", destination: TextFieldFormatterView())
                    NavigationLink("List style", destination: ListStyleView())

                    Section {
                        Text("Resolved Issues")
                            .font(.headline)

                        NavigationLink("ScrollView indicators", destination: ScrollViewIndicatorsView())
                    }
                }
            }
        }
    }
}
