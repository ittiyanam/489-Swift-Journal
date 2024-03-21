//
//  BOCreateAnAccount.swift
//  ClientBridge
//
//  Created by Ittiyanam Tomichan on 3/14/24.
//

import SwiftUI
import UniformTypeIdentifiers

struct BOCreateAnAccount: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var businessName: String = ""

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
                .frame(width: 220, height: 45)
                .overlay(
                    Text("Create an Account")
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                        .bold()
                )
            Spacer().frame(height:30)
            // authentication TextFields
            TextField("Email", text: $email)
                .padding(.horizontal, 45)
                .foregroundColor(Color(hex: "004AAD")) // Text color
                .background(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color(hex: "004AAD"), lineWidth: 1) // Custom border color and width
                    .frame(width: 294, height: 40)
                    )
                .padding()
            //password will use the SecureField type
            SecureField("Password", text: $password)
                .padding(.horizontal, 45)
                .foregroundColor(Color(hex: "004AAD")) // Text color
                .background(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color(hex: "004AAD"), lineWidth: 1) // Custom border color and width
                    .frame(width: 294, height: 40)
                    )
                .padding()
            TextField("Business Name", text: $businessName)
                .padding(.horizontal, 45)
                .foregroundColor(Color(hex: "004AAD")) // Text color
                .background(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color(hex: "004AAD"), lineWidth: 1) // Custom border color and width
                    .frame(width: 294, height: 40)
                    )
                .padding()
            Spacer()
            //footer
            Text("BRIDGE THE GAP")
                .bold()
                .kerning(1)
                .font(.system(size: 25))
                //.font("Montserrat-Bold")
        }
    }
}


struct BOCreateAnAccount_Previews:PreviewProvider{
    static var previews: some View {
        BOCreateAnAccount()
    }
}

