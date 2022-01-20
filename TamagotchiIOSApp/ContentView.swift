//
//  ContentView.swift
//  TamagotchiIOSApp
//
//  Created by Edmunds, Maximilian (NA) on 20/01/2022.
//

import SwiftUI

struct ContentView: View {
    var tamagotchi = Tamagotchi()
    var body: some View {
        ZStack {
            Image("74707")
            Image("Egg")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Circle()
                .foregroundColor(.red)
                .frame(width: 50, height: 50)
            Text(tamagotchi.returnStats())
            Button("Feed", action: {
                tamagotchi.eat()
                
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
