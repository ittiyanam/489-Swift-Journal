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
        "Fun": ["Happy by Pharrell Williams", "Shut Up and Dance by Walk the Moon", "Uptown Funk by Mark Ronson ft. Bruno Mars", "Beggin' by Maneskin"],
        "AHHHHH": ["Industry Baby by Lil Nas X ft. Jack Harlow", "The Box by Roddy Ricch", "HUMBLE. by Kendrick Lamar", "Mo Bamba by Sheck Wes"],
        "Vibey": ["Heat Waves by Glass Animals", "Brand New Person by Tame Impala", "Heartbreak Anniversary by Giveon"],
        "Chill": ["Best Part by Daniel Caesar ft. H.E.R.", "Save Your Tears by The Weeknd", "Stay by The Kid LAROI & Justin Bieber", "Good Days by SZA", "Lost in Japan by Shawn Mendes"]
    ]
    
    @State private var selectedSong = ""
    
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
            .onChange(of: selection, perform: { _ in
                selectRandomSong()
            })
            
            Spacer().frame(height: 30)
            // Display the selected song
            Text(selectedSong)
        }
        .onAppear {
            // Set the initial selected song
            selectRandomSong()
        }
    }
    
    func selectRandomSong() {
        // Get the array of songs based on the current selection
        if let songsForSelection = songs[selection] {
            // Select a random song from the array
            selectedSong = songsForSelection.randomElement() ?? ""
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
