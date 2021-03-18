import SwiftUI

struct UppercasedTextFieldView: View {
    @State var text = ""

    var body: some View {
        VStack(alignment: .leading) {
            Text("Typed text should be uppercased")

            TextField("Type anything", text: $text)
                .textCase(.uppercase)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct UppercasedTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        UppercasedTextFieldView()
    }
}
