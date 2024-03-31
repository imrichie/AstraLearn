//
//  Planet.swift
//  AstraLearn
//
//  Created by Richie Flores on 3/28/24.
//

import Foundation


struct Planet: Identifiable {
    let id: UUID = UUID()
    let name: String
    let imageName: String
    let funFact: String
}


// Dummy Data
let planetsData: [Planet] = [
    Planet(name: "Mercury", imageName: "Mercury", funFact: "Mercury is the smallest planet in our Solar System"),
    Planet(name: "Venus", imageName: "Venus", funFact: "Venus has a hot, hellish atmosphere"),
    Planet(name: "Earth", imageName: "Earth", funFact: "Eart is where we live"),
    Planet(name: "Mars", imageName: "Mars", funFact: "Mars is the red plane"),
    Planet(name: "Jupiter", imageName: "Jupiter", funFact: "Jupiter is the largest planet in our solar system"),
    Planet(name: "Neptune", imageName: "Neptune", funFact: "This is the blue planet"),
    Planet(name: "Pluto", imageName: "Pluto", funFact: "People are still debating whether it's a planet or not")
]
