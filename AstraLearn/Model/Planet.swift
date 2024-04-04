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
    let description: String
    let numberOfMoons: Int
    let orbitPeriod: Int
    let diameter: Int // in Earth days
    let orbitNumber: Int // in kilometers
    let surfaceTemperate: Int // average, in Celcius
    
    // descriptions for the metric cards
    let moonDescriptions: String = "Moons orbiting"
    let orbitDescription: String = "Orbit period in Earth Days"
    let diameterDescription: String = "Diamter in Kilometers"
    let temperatureDescription: String = "Average surface temp in °C"
    
    // Return both the period and the unit as a tuple
    var formattedOrbitPeriod: (value: Int, unit: String) {
        if orbitPeriod <= 365 {
            return (orbitPeriod, "Earth Days")
        } else {
            // Convert to years for anything over 365 days
            let years = orbitPeriod / 365
            return (years, "Earth Years")
        }
    }
    
    // Computed property for diameter with "K" or "M"
    var formattedDiameter: (value: String, unit: String) {
        if diameter < 1_000 {
            // For diameters less than a thousand kilometers, just show the number
            return ("\(diameter)", "kilometers")
        } else if diameter < 1_000_000 {
            // Convert to thousands for readability and append "K"
            let thousands = Double(diameter) / 1_000.0
            return (String(format: "%.1fK", thousands), "kilometers")
        } else {
            // Convert to millions for readability and append "M"
            let millions = Double(diameter) / 1_000_000.0
            return (String(format: "%.1fM", millions), "kilometers")
        }
    }
}


enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto
    
    var details: PlanetDetails {
        switch self {
        case .mercury:
            return PlanetDetails(name: "Mercury", imageName: "Mercury", description: "Mercury has no atmosphere, which means there is no weather", 
                                 numberOfMoons: 0, orbitPeriod: 88, diameter: 4880, orbitNumber: 1, surfaceTemperate: -65)
        case .venus:
            return PlanetDetails(name: "Venus", imageName: "Venus", description: "Venus is the hottest planet in our solar system", 
                                 numberOfMoons: 0, orbitPeriod: 225, diameter: 12104, orbitNumber: 2, surfaceTemperate: 465)
        case .earth:
            return PlanetDetails(name: "Earth", imageName: "Earth", description: "Earth is the only planet not named after a god", 
                                 numberOfMoons: 1, orbitPeriod: 365, diameter: 12742, orbitNumber: 3, surfaceTemperate: 14)
        case .mars:
            return PlanetDetails(name: "Mars", imageName: "Mars", description: "Mars is home to the tallest mountain in the solar system", 
                                 numberOfMoons: 2, orbitPeriod: 687, diameter: 6779, orbitNumber: 4, surfaceTemperate: -55)
        case .jupiter:
            return PlanetDetails(name: "Jupiter", imageName: "Jupiter", description: "Jupiter has the shortest day of all the planets", 
                                 numberOfMoons: 79, orbitPeriod: 4333, diameter: 139820, orbitNumber: 5, surfaceTemperate: -145)
        case .saturn:
            return PlanetDetails(name: "Saturn", imageName: "Saturn", description: "Saturn has the most extensive rings of any planet", 
                                numberOfMoons: 82, orbitPeriod: 10759, diameter: 116460, orbitNumber: 6, surfaceTemperate: -178)
        case .uranus:
            return PlanetDetails(name: "Uranus", imageName: "Uranus", description: "Uranus makes one trip around the Sun every 84 Earth years", 
                                 numberOfMoons: 27, orbitPeriod: 30687, diameter: 50724, orbitNumber: 7, surfaceTemperate: -195)
        case .neptune:
            return PlanetDetails(name: "Neptune", imageName: "Neptune", description: "Neptune was the first planet located through mathematical calculations", 
                                 numberOfMoons: 14, orbitPeriod: 60190, diameter: 49244, orbitNumber: 8, surfaceTemperate: -200)
        case .pluto:
            return PlanetDetails(name: "Pluto", imageName: "Pluto", description: "Pluto was reclassified from a planet to a dwarf planet in 2006", 
                                 numberOfMoons: 5, orbitPeriod: 90560, diameter: 2377, orbitNumber: 9, surfaceTemperate: -225)
        }
    }
}

