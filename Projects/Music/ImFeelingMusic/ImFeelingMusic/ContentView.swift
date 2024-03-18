//
//  ContentView.swift
//  ImFeelingMusic
//
//  Created by Ittiyanam Tomichan on 3/17/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = "Fun"
    let colors = ["Fun", "AHHHHH", "Vibey", "Chill"]

    var body: some View {
        VStack {
            Text("I'm Feeling...")
                .font(.system(size: 30))
            Picker("", selection: $selection) {
                ForEach(colors, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.menu)
            
            Spacer().frame(height: 30)
            // Display different text based on the selection
            Text(selectedText())
        }
    }
    
    func selectedText() -> String {
        // Return different text based on the selection
        switch selection {
            case "Fun":
                return "Here's a fun song"
            case "AHHHHH":
                return "Rock on!"
            case "Vibey":
                return "RnB"
            case "Chill":
                return "bossa nova"
            default:
                return ""
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
