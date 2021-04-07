import SwiftUI

struct ListStyleView: View {
    var body: some View {
        List(0..<10, id: \.self) { idx in
            Text("\(idx)")
        }
        .listRowBackground(Color.white)
        .listStyle(PlainListStyle())
        .listItemTint(.blue)
        .listRowInsets(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
        .background(Color.purple)
    }
}

struct ListStyleView_Previews: PreviewProvider {
    static var previews: some View {
        ListStyleView()
    }
}
