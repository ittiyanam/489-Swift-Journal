//
//  GameView.swift
//  TicTacToev1
//
//  Created by Ittiyanam Tomichan on 2/26/24.
//

import SwiftUI

struct GameView: View {
    
@Environment (\.dismiss) var dismiss

    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }.toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
                Button("End Game"){
                    //state property
                    //environment property
                    //environment object property
                    dismiss() //instantiating the class
                
                }.buttonStyle(.bordered)
            }
        }
        .navigationTitle("Tic Tac Toe")
    }
    
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
