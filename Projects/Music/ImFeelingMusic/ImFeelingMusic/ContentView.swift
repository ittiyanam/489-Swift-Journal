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
    
    // Define a dictionary to store songs for each option
    let songs = [
        "Fun": ["Happy \n Pharrell Williams", "Shut Up and Dance \n Walk the Moon", "Uptown Funk \n Mark Ronson ft. Bruno Mars", "Beggin' \n Maneskin"],
        "AHHHHH": ["Industry Baby \n Lil Nas X ft. Jack Harlow", "The Box \n Roddy Ricch", "HUMBLE. \n Kendrick Lamar", "Mo Bamba \n Sheck Wes"],
        "Vibey": ["Heat Waves \n Glass Animals", "Brand New Person \n Tame Impala", "Heartbreak Anniversary \n Giveon"],
        "Chill": ["Best Part \n Daniel Caesar ft. H.E.R.", "Save Your Tears \n The Weeknd", "Stay \n The Kid LAROI & Justin Bieber", "Good Days \n SZA", "Lost in Japan \n Shawn Mendes"]
    ]
    
    @State private var selectedSong = ""
    
    var body: some View {
        ZStack{
            Color.purple
                .ignoresSafeArea()

            VStack {
                Spacer().frame(height:200)
                Text("I'm Feeling...")
                    .font(.system(size: 40))
                Picker("", selection: $selection) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.menu)
                .onChange(of: selection, perform: { _ in
                    selectRandomSong()
                })
                
                Spacer().frame(height: 10)
                // Display the selected song
                RoundedRectangle(cornerRadius: 20) // Adjust the corner radius as needed
                    .stroke(Color.blue, lineWidth: 2) // Border color and width
                    .padding(.vertical, 150) // Adjust the vertical padding
                    .padding(.horizontal, 20) // Adjust the horizontal padding
                    .overlay(
                        Text(selectedSong)
                            .font(.title2)
                            .foregroundColor(.black) // Changing text color
                            .multilineTextAlignment(.center) // Center-aligning text
                            .padding() // Adding some padding
                    )
            }
            .onAppear {
                // Set the initial selected song
                selectRandomSong()
            }
        }
    }
    
    func selectRandomSong() {
        // Get the array of songs based on the current selection
        if let songsForSelection = songs[selection] {
            // Select a random song from the array
            selectedSong = songsForSelection.randomElement() ?? ""
        }
    }//selectRandomSong()
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
