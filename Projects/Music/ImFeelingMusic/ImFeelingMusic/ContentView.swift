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
            //change background color
            Color.yellow
                .ignoresSafeArea()

            VStack {
                Spacer().frame(height:200)
                Text("I'm Feeling...")
                    .font(.system(size: 40))
                //dropdown
                Picker("", selection: $selection) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.menu)
                //when selection is changed
                .onChange(of: selection, perform: { _ in
                    selectRandomSong() //pick random song
                })
                
                Spacer().frame(height: 10)
                // display selected song
                RoundedRectangle(cornerRadius: 20) // radius
                    .stroke(Color.blue, lineWidth: 2) // Border color and width
                    .padding(.vertical, 150) // vertical padding
                    .padding(.horizontal, 20) // horizontal padding
                    .overlay(
                        Text(selectedSong)
                            .font(.title2)
                            .foregroundColor(.black) // text color
                            .multilineTextAlignment(.center) // centering text
                            .padding()
                    )
            }
            .onAppear {
                // set initial song
                selectRandomSong()
            }
        }
    }
    //selects a random song from respective list
    func selectRandomSong() {
        // get array of songs based on selection
        if let songsForSelection = songs[selection] {
            // random song from array
            selectedSong = songsForSelection.randomElement() ?? ""
        }
    }//func
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
