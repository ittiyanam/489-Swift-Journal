//
//  ChooseRole.swift
//  ClientBridge

import SwiftUI
import UniformTypeIdentifiers

struct BOLogin: View {
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack{
            Image("logo_only")
                .resizable()
                .frame(width: 72, height: 72) // Adjust size as needed
            Text("BUSINESS OWNER")
                .font(.title)
                .fontWeight(.bold)
                .kerning(1)

            Spacer()
            Rectangle()
                .fill(Color(hex: "004AAD"))
                .frame(width: 100, height: 50)
                .overlay(
                    Text("Sign In")
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                        .bold()
                )
                .overlay(
                    Rectangle()
                        .stroke(Color(hex: "004AAD"), lineWidth: 2)
                )
            
            Spacer().frame(height:30)
            
            // Auth TextFields
            TextField("Email", text: $email)
                .padding(.horizontal, 30)
                .foregroundColor(Color(hex: "004AAD")) // Text color
                .background(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color(hex: "004AAD"), lineWidth: 1) // Custom border color and width
                    .frame(width: 294, height: 40)
                    )
                .padding()
            SecureField("Password", text: $password)
                .padding(.horizontal, 30)
                .foregroundColor(Color(hex: "004AAD")) // Text color
                .background(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color(hex: "004AAD"), lineWidth: 1) // Custom border color and width
                    .frame(width: 294, height: 40)
                    )
                .padding()
            
            
            Spacer().frame(height:250)

            //footer
            Text("BRIDGE THE GAP")
                .bold()
                .kerning(1)
                .font(.system(size: 25))
                //.font("Montserrat-Bold")

        }
        .padding([.leading, .trailing], 20) // Add padding to the leading and trailing edges

        Spacer()
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }

}


struct BOLogin_Previews: PreviewProvider {
    static var previews: some View {
        BOLogin()
    }
}





