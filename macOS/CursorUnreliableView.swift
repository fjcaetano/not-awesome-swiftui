import SwiftUI

struct CursorUnreliableView: View {
    @State var isHovering = false

    var body: some View {
        VStack(spacing: 30) {
            Text("Hovering any of these buttons should apply a hand cursor")

            Button("Hovering this button works", action: {})
                .onHover { isHovering in
                    if isHovering {
                        NSCursor.pointingHand.push()
                    } else {
                        NSCursor.pop()
                    }
                }

            Button("Hovering this button doesn't work", action: {})
                .onHover { isHovering in
                    if isHovering {
                        NSCursor.pointingHand.push()
                    } else {
                        NSCursor.pop()
                    }
                }
                .hoverStyle { $0.background(Color.red) }

            Button("The order of 'onHover' do not matter", action: {})
                .hoverStyle { $0.background(Color.red) }
                .onHover { isHovering in
                    if isHovering {
                        NSCursor.pointingHand.push()
                    } else {
                        NSCursor.pop()
                    }
                }


            Button("Using a single `onHover` does not work either", action: {})
                .background(isHovering ? Color.red : Color.clear)
                .onHover { isHovering in
                    self.isHovering = isHovering
                    if isHovering {
                        NSCursor.pointingHand.push()
                    } else {
                        NSCursor.pop()
                    }
                }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

private struct HoverModifier<Result: View>: ViewModifier {
    let modifier: () -> Result
    @State private var isHovering = false

    func body(content: Content) -> some View {
        (isHovering ? AnyView(modifier()) : AnyView(content))
            .onHover { self.isHovering = $0 }
    }
}

extension View {
    func hoverStyle<Result: View>(modify: @escaping (Self) -> Result) -> some View {
        modifier(HoverModifier { modify(self) })
    }
}


struct CursorUnreliableView_Previews: PreviewProvider {
    static var previews: some View {
        CursorUnreliableView()
    }
}
