import SwiftUI

struct TextFieldFormatterView: View {
    @State private var nameComponents = PersonNameComponents()
    let nameFormatter = PersonNameComponentsFormatter()

    var body: some View {
        VStack(alignment: .leading) {
            TextField(
                "Proper name",
                 value: $nameComponents,
                 formatter: nameFormatter
                )
            Text(nameComponents.debugDescription)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct TextFieldFormatterView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldFormatterView()
    }
}
