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
    let diameter: Int // in kilometers
    let orbitNumber: Int // orbit position from sun
    let surfaceTemperate: Int // average, in Celsius
    
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
    
    // Format the diameter and handle decimal point
    var formattedDiameter: String {
        let diameterInThousands = Double(diameter) / 1_000.0
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 0 // No decimals
        formatter.maximumFractionDigits = 1 // Allow up to one digit after the decimal point
        
        // This ensures that for Earth, "12742" becomes "12.742", and then "12,742" after formatting.
        if let formattedNumber = formatter.string(from: NSNumber(value: diameterInThousands)) {
            // Append "K" without space to indicate thousands.
            return "\(formattedNumber)k"
        } else {
            // Fallback to the original diameter in kilometers if formatting fails.
            return "\(diameter) km"
        }
    }
    
    // format surface temperature
    var formattedTemperature: String {
        return "\(surfaceTemperate)°c"
    }
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto
    
    var details: PlanetDetails {
        switch self {
        case .mercury:
            return PlanetDetails(name: "Mercury", imageName: "Mercury", description: "Mercury has no atmosphere, which means there is no weather",
                                 numberOfMoons: 0, orbitPeriod: 88, diameter: 4878, orbitNumber: 1, surfaceTemperate: 167)
        case .venus:
            return PlanetDetails(name: "Venus", imageName: "Venus", description: "Venus is the hottest planet in our solar system",
                                 numberOfMoons: 0, orbitPeriod: 225, diameter: 12104, orbitNumber: 2, surfaceTemperate: 465)
        case .earth:
            return PlanetDetails(name: "Earth", imageName: "Earth", description: "Earth is the only planet not named after a god",
                                 numberOfMoons: 1, orbitPeriod: 365, diameter: 12742, orbitNumber: 3, surfaceTemperate: 15)
        case .mars:
            return PlanetDetails(name: "Mars", imageName: "Mars", description: "Mars is home to the tallest mountain in the solar system",
                                 numberOfMoons: 2, orbitPeriod: 687, diameter: 6794, orbitNumber: 4, surfaceTemperate: -65)
        case .jupiter:
            return PlanetDetails(name: "Jupiter", imageName: "Jupiter", description: "Jupiter has the shortest day of all the planets",
                                 numberOfMoons: 79, orbitPeriod: 4333, diameter: 142796, orbitNumber: 5, surfaceTemperate: -110)
        case .saturn:
            return PlanetDetails(name: "Saturn", imageName: "Saturn", description: "Saturn has the most extensive rings of any planet",
                                numberOfMoons: 82, orbitPeriod: 10759, diameter: 120660, orbitNumber: 6, surfaceTemperate: -140)
        case .uranus:
            return PlanetDetails(name: "Uranus", imageName: "Uranus", description: "Uranus makes one trip around the Sun every 84 Earth years",
                                 numberOfMoons: 27, orbitPeriod: 30687, diameter: 51118, orbitNumber: 7, surfaceTemperate: -195)
        case .neptune:
            return PlanetDetails(name: "Neptune", imageName: "Neptune", description: "Neptune was the first planet located through mathematical calculations",
                                 numberOfMoons: 14, orbitPeriod: 60190, diameter: 49523, orbitNumber: 8, surfaceTemperate: -200)
        case .pluto:
            return PlanetDetails(name: "Pluto", imageName: "Pluto", description: "Pluto was reclassified from a planet to a dwarf planet in 2006",
                                 numberOfMoons: 5, orbitPeriod: 90560, diameter: 2300, orbitNumber: 9, surfaceTemperate: -225)
        }
    }
}
