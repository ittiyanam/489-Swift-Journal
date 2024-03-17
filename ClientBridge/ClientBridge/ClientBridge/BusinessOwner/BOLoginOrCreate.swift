//
//  BOLoginOrCreate.swift
//  ClientBridge
//
//  Created by Ittiyanam Tomichan on 3/14/24.
//

import SwiftUI
import UniformTypeIdentifiers

struct BOLoginOrCreate: View {
    @State private var navToLogin = false // State variable to track navigation

    var body: some View {
        NavigationView{
            VStack{
                Spacer().frame(height:45)
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
                
                NavigationLink(destination: BOLogin()){
                    SignInText(title: "Sign In")
                }
                    
                
                Spacer().frame(height: 20)
                Text("OR")
                    .bold()
                Spacer().frame(height: 20)
                
                //Create an Account -- NW
                NavigationLink(destination: BOCreateAnAccount()){
                    Text("Create an Account")
                        .underline()
                        .font(.system(size: 18))
                        .foregroundColor(Color(hex: "004AAD"))
                }
                
                Spacer()
                
                //footer
                Text("BRIDGE THE GAP")
                    .bold()
                    .kerning(1)
                    .font(.system(size: 25))
                //.font("Montserrat-Bold")
                
            }
            .padding() // Add padding to the leading and trailing edges
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .edgesIgnoringSafeArea(.all)
        }
    }
}


struct BOLoginOrCreate_Previews:PreviewProvider{
    static var previews: some View {
        BOLoginOrCreate()
    }
}

struct SignInText: View {
    var title: String

    @State private var isHovered = false
    
    var body: some View {
        Text(title)
            .foregroundColor(isHovered ? Color(hex: "004AAD") : Color.white) // Blue text color on hover
            .frame(width: 200, height: 50) // Fixed width and height
            .background(isHovered ? Color.white : Color(hex: "004AAD")) // White background on hover
            .cornerRadius(15)
            .bold()
        }
}
