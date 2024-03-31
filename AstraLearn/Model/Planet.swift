//
//  Planet.swift
//  AstraLearn
//
//  Created by Richie Flores on 3/28/24.
//

import Foundation


struct PlanetDetails: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let notableFact: String
    let numberOfMoons: Int
    let orbitPeriod: Int
    let diameter: Int
    let orbitNumber: Int
}


enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto
    
    var details: PlanetDetails {
        switch self {
        case .mercury:
            return PlanetDetails(name: "Mercury", imageName: "Mercury", notableFact: "Mercury has no atmosphere, which means there is no weather", numberOfMoons: 0, orbitPeriod: 88, diameter: 4880, orbitNumber: 1)
            
        case .venus:
            return PlanetDetails(name: "Venus", imageName: "Venus", notableFact: "Venus is the hottest planet in our solar system", numberOfMoons: 0, orbitPeriod: 225, diameter: 12104, orbitNumber: 2)
            
        case .earth:
            return PlanetDetails(name: "Earth", imageName: "Earth", notableFact: "Earth is the only planet not named after a god", numberOfMoons: 1, orbitPeriod: 365, diameter: 12742, orbitNumber: 3)
            
        case .mars:
            return PlanetDetails(name: "Mars", imageName: "Mars", notableFact: "Mars is home to the tallest mountain in the solar system", numberOfMoons: 2, orbitPeriod: 687, diameter: 6779, orbitNumber: 4)
            
        case .jupiter:
            
            return PlanetDetails(name: "Jupiter", imageName: "jupiter", notableFact: "Jupiter has the shortest day of all the planets", numberOfMoons: 79, orbitPeriod: 4333, diameter: 139820, orbitNumber: 5)
        case .saturn:
            
            return PlanetDetails(name: "Saturn", imageName: "saturn", notableFact: "Saturn has the most extensive rings of any planet", numberOfMoons: 82, orbitPeriod: 10759, diameter: 116460, orbitNumber: 6)
        case .uranus:
            
            return PlanetDetails(name: "Uranus", imageName: "uranus", notableFact: "Uranus makes one trip around the Sun every 84 Earth years", numberOfMoons: 27, orbitPeriod: 30687, diameter: 50724, orbitNumber: 7)
        case .neptune:
            
            return PlanetDetails(name: "Neptune", imageName: "neptune", notableFact: "Neptune was the first planet located through mathematical calculations", numberOfMoons: 14, orbitPeriod: 60190, diameter: 49244, orbitNumber: 8)
            
        case .pluto:
            return PlanetDetails(name: "Pluto", imageName: "Pluto", notableFact: "Pluto was reclassified from a planet to a dwarf planet in 2006", numberOfMoons: 5, orbitPeriod: 90560, diameter: 2377, orbitNumber: 9)
        }
    }
}

