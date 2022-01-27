//
//  ContentView.swift
//  TamagotchiIOSApp
//
//  Created by Edmunds, Maximilian (NA) on 20/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @StateObject private var tamagotchi = Tamagotchi()
    
    
    
    
    var body: some View {
        VStack {
            Form {
                Rectangle()
                    .frame(width: 330, height: 330, alignment: .center)
                
            }
            Form {
                Text(tamagotchi.returnStats())
                    .onReceive(timer) {_ in
                        tamagotchi.ageIncrease()
                    }
                Button("Feed", action: {
                    tamagotchi.eat()
                })
                Button("Water", action: {
                    tamagotchi.drink()
                })
                Button("Game", action: {
                    tamagotchi.playAGame()
                })
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
