//
//  ContentView.swift
//  BussinesCard
//
//  Created by Simbarashe Mupfururirwa on 2023/07/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            Text("Simbarashe Mupfururirwa")
                .font(.title)
                .bold()
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
