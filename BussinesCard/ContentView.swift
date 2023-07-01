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
            VStack {
                Image("Simba")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Simbarashe Mupfururirwa")
                    .font(Font.custom("Pacifico-Regular", size: 28))
                    .bold()
                .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+27 65 925 8680", imageName: "phone.fill")
                InfoView(text: "scmupfururirwa@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack{
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                }
            ).padding(.all)
    }
}
