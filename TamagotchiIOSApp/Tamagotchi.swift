//
//  Tamagotchi.swift
//  TamagotchiIOSApp
//
//  Created by Edmunds, Maximilian (NA) on 20/01/2022.
//

import Foundation

class Tamagotchi: ObservableObject {
    @Published var hunger : Int
    @Published var thirst : Int
    @Published var health : Int
    @Published var happiness: Int
    @Published var age : Int
    var timeElapsed : Double
    
    init() {
        self.hunger = 10
        self.thirst = 10
        self.health = 7
        self.happiness = 5
        self.age = 0
        self.timeElapsed = 0.0
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
    
    func playAGame() {
        if hunger < 5 && thirst < 5 {
            if happiness < 10 {
                if happiness < 9 {
                    happiness += 2
                } else {
                    happiness += 1
                }
            }
        }
    }
    
    func ageIncrease() {
        timeElapsed += 0.05
        age = Int(self.timeElapsed)
    }
    
    
    
    func returnStats() -> String {
        return """
        Hunger : \(hunger)
        Thirst : \(thirst)
        Health : \(health)
        Happiness : \(happiness)
        Age : \(age)
            
        """
    }
}
