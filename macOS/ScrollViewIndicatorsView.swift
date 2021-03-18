import SwiftUI

struct ScrollViewIndicatorsView: View {
    @ObservedObject var updater = Updater()
    @State var showList = false {
        didSet {
            if showList != oldValue {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    // Uncomment this line for a workaround fix
//                    self.updater.objectWillChange.send()
                }
            }
        }
    }

    var body: some View {
        ScrollView {
            if showList {
                Text("Notice the blue borders. Scrolling fixes the issue")
                    .padding()

                ForEach(0..<10) { _ in
                    Rectangle()
                        .fill(Color.clear)
                        .frame(height: 200)
                        .frame(maxWidth: .infinity)
                        .border(Color.blue)
                }
            } else {
                EmptyView()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onAppear {
            DispatchQueue.main.async {
                self.showList = true
            }
        }
    }
}

class Updater: ObservableObject {}

struct ScrollViewIndicatorsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewIndicatorsView()
    }
}
