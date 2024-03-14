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
            HStack(spacing:20){
                Image("logo_only")
                    .resizable()
                    .frame(width: 72, height: 72) // Adjust size as needed
                VStack{
                    Text("BUSINESS OWNER")
                        .font(.title)
                        .fontWeight(.bold)
                        .kerning(1)
                    Text("Seamless communication and document management with your clients")
                        .kerning(1)
                        .foregroundColor(Color(hex: "004AAD"))
                }
            }
            
            Spacer()
            Spacer()
            
            // Email TextField
            TextField("Email", text: $email)
                .padding(.horizontal, 30)
                .foregroundColor(Color(hex: "004AAD")) // Text color
                .background(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color(hex: "004AAD"), lineWidth: 1) // Custom border color and width
                    .frame(width: 294, height: 40)
                    )
                .padding()
            
            // Password TextField
            SecureField("Password", text: $password)
                .padding(.horizontal, 30)
                .foregroundColor(Color(hex: "004AAD")) // Text color
                .background(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color(hex: "004AAD"), lineWidth: 1) // Custom border color and width
                    .frame(width: 294, height: 40)
                    )
                .padding()
            
            
            Spacer().frame(height:250)
            
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





