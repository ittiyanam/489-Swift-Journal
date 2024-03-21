//
//  ChooseRole.swift
//  ClientBridge

import SwiftUI
import UniformTypeIdentifiers

struct BOLogin: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isAuthenticated: Bool = false
    var body: some View {
        VStack{
            Spacer().frame(height:45)
            Image("logo_only")
                .resizable()
                .frame(width: 72, height: 72) // Adjust size as needed
            Text("BUSINESS OWNER")
                .font(.title)
                .fontWeight(.bold)
                .kerning(1)

            Spacer()            
            
            // Auth TextFields
            TextField("Email", text: $email)
                .padding(.horizontal, 30)
                .foregroundColor(Color(hex: "004AAD")) // text color
                .background(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color(hex: "004AAD"), lineWidth: 1) // border color and width
                    .frame(width: 294, height: 40)
                    )
                .padding()
            SecureField("Password", text: $password)
                .padding(.horizontal, 30)
                .foregroundColor(Color(hex: "004AAD")) // text color
                .background(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color(hex: "004AAD"), lineWidth: 1) // border color and width
                    .frame(width: 294, height: 40)
                    )
                .padding()
            
            
            Button(action: {
                //perform authentication
                isAuthenticated = true //test val, always T
            }) {
                Text("Sign In")
            }
            .buttonStyle(AuthenticationButtonStyle())
            .padding()

            
            Spacer()

            //footer
            Text("BRIDGE THE GAP")
                .bold()
                .kerning(1)
                .font(.system(size: 25))
                //.font("Montserrat-Bold")

        }
        .padding() // padding to the leading and trailing edges
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all) //goes past safe area
    }

}


struct BOLogin_Previews: PreviewProvider {
    static var previews: some View {
        BOLogin()
    }
}

//style of the button to sign in
struct AuthenticationButtonStyle: ButtonStyle {
    //style of button
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(
                Rectangle()
                    .fill(Color(hex: "004AAD"))
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                    .overlay(
                        Rectangle()
                            .stroke(Color(hex: "004AAD"), lineWidth: 2)
                    )
            )
            .foregroundColor(.white)
            .font(.system(size: 18))
            .cornerRadius(8)
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}



