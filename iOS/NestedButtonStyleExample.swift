import SwiftUI

struct MyButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(configuration.isPressed ? Color.black.opacity(0.1) : .clear)
    }
}

struct NestedButtonStyleExample: View {
    var body: some View {
        Button(action: {}) {
            HStack {
                Text("1. Tap and hold here")
                    .frame(maxWidth: .infinity)

                Button("2. Tap and hold here", action: {})
                    .frame(maxWidth: .infinity)
                    .buttonStyle(MyButtonStyle())
            }
        }
        .buttonStyle(MyButtonStyle())
    }
}
