//
//  Tamagotchi.swift
//  TamagotchiIOSApp
//
//  Created by Edmunds, Maximilian (NA) on 20/01/2022.
//

import Foundation

class Tamagotchi {
    var hunger : Int
    var thirst : Int
    var health : Int
    
    init() {
        self.hunger = 10
        self.thirst = 10
        self.health = 7
    }
    
    func eat() {
        if hunger > 0 {
            hunger -= 1
        } else {
            hunger = 0
        }
    }
    
    func drink() {
        if thirst > 0 {
            thirst -= 1
        }
    }
    
    func returnStats() -> String{
        return """
        Tamagotchi Stats
        ----------------
        Hunger : \(hunger)
        Thirst : \(thirst)
        Health : \(health)
            
        """
    }
}
