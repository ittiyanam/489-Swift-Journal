//
//  ChooseRole.swift
//  ClientBridge

import SwiftUI

struct ChooseRole: View {
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Image("logo_only")
                .resizable()
                .frame(width: 200, height: 200)
            
            Text("ClientBridge")
                .font(.custom("Montserrat-Bold", size: 20))
            
            Text("where businesses and \nclients connect effortlessly")
                .font(.custom("Montserrat-Thin", size: 16))
                .multilineTextAlignment(.center)
            
            
            Rectangle()
                .fill(Color(hex: "004AAD"))
                .frame(width: 250, height: 40)
                .overlay(
                    Text("Choose your role:")
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                )
            
            CustomButton(title: "I'm a Business Owner")
                        
            CustomButton(title: "I'm a Client")

            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }

}

struct ChooseRole_Previews: PreviewProvider {
    static var previews: some View {
        ChooseRole()
    }
}


struct CustomButton: View {
    var title: String
    
    var body: some View {
        Button(action: {
            // Action for the button
        }) {
            Text(title)
                .foregroundColor(Color(hex: "004AAD")) // Blue text color
                .padding(.vertical, 3) // Thinner vertically with padding
                .padding(.horizontal, 16) // Adjust horizontal padding for both buttons
                .background(Color.white) // White background
                .overlay(
                    RoundedRectangle(cornerRadius: 10) // Rounded rectangle border
                        .stroke(Color(hex: "004AAD"), lineWidth: 1) // Blue border color
                )
                
        }
        
    }
}



extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanLocation // skip #

        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)

        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue)
    }
}

