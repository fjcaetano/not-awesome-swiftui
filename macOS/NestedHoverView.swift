import SwiftUI

struct NestedHoverView: View {
    @State var isHovering = false

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.blue)
                .onHover { active in
                    isHovering = active
                }

            Rectangle()
                .fill(Color.white)
                .overlay(
                    isHovering
                        ? AnyView(
                            Text("Hovering the background view")
                                .foregroundColor(.black)
                        )
                        : AnyView(EmptyView())
                )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct NestedHoverView_Previews: PreviewProvider {
    static var previews: some View {
        NestedHoverView()
    }
}
