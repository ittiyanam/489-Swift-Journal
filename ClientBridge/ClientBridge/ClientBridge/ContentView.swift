//
//  ContentView.swift
//  ClientBridge
//
//  Created by Ittiyanam Tomichan on 3/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("logo_only")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.accentColor)
                .padding(3)
            Text("ClientBridge")
                .font(.custom("Montserrat-ExtraLight", size: 20))
                .padding(3)
            Text("WELCOME")
                .font(.custom("Montserrat-Bold", size: 20))
        }

        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
