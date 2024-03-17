import SwiftUI

struct ContentView: View {
    @State private var isActive: Bool = false
    

    var body: some View {
        NavigationView {
            VStack {
                Image("logo_only")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.accentColor)
                    .padding(3)
                Text("ClientBridge")
                    .font(.custom("Montserrat-ExtraLight", size: 20))
                    .padding(3)
                Text("WELCOME")
                    .font(.custom("Montserrat-Bold", size: 20))
                
                NavigationLink(destination:ChooseRole()){
                    Text("Launch")
                        .frame(width: 100, height: 100, alignment: .center)
                        .background(.white)
                        .foregroundColor(.black)
                }
            }
            .padding()
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
