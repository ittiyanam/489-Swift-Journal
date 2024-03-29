//
//  ChooseRole.swift
//  ClientBridge

import SwiftUI
import UniformTypeIdentifiers

struct ChooseRole: View {
    
    var body: some View {
        NavigationView { // Embed in NavigationView
            VStack(spacing: 20) {
                Spacer()
                //logo and text
                Image("logo_only")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Text("ClientBridge")
                    .font(.custom("Montserrat-Bold", size: 20))
                
                Text("where businesses and \nclients connect effortlessly")
                    .font(.custom("Montserrat-Thin", size: 16))
                    .multilineTextAlignment(.center)
                //question box
                Rectangle()
                    .fill(Color(hex: "004AAD"))
                    .frame(width: 250, height: 45)
                    .overlay(
                        Text("Who are you?")
                            .font(.system(size: 18))
                            .foregroundColor(.white)
                    )
                
                // NavigationLink goes to BusinessOwnerView if navToBO is true
                NavigationLink(destination: BOLoginOrCreate()){
                    CustomText(title: "I'm a Business Owner")
                }
                
                // NavigationLink goes to ClientView if navToClient is true
                NavigationLink(destination: CLoginOrCreate()){
                    CustomText(title: "I'm a Client")
                }
                
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ChooseRole_Previews: PreviewProvider {
    static var previews: some View {
        ChooseRole()
    }
}


struct CustomText: View {
    var title: String

    @State private var isHovered = false
    
    var body: some View {
        Text(title)
            .foregroundColor(isHovered ? Color.white : Color(hex: "004AAD")) // Blue text color
            .frame(width: 200, height: 40) // Fixed width and height
            .background(isHovered ? Color(hex: "004AAD") : Color.white) // White background
            .overlay(
                RoundedRectangle(cornerRadius: 10) // Rounded rectangle border
                    .stroke(Color(hex: "004AAD"), lineWidth: 1) // Blue border color
            )
        }
}


extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")

        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)

        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue)
    }
}
