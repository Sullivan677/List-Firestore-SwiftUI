import SwiftUI
struct ContentView: View {
    
    @ObservedObject private var viewModel = userViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.users) { user in
                VStack(alignment: .leading) {
                    Text(user.name).font(.title)
                    Text(user.surname).font(.subheadline)
                }
            }.navigationBarTitle("Users")
            .onAppear() {
                self.viewModel.fetchData()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
