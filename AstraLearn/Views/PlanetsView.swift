//
//  PlanetsView.swift
//  AstraLearn
//
//  Created by Richie Flores on 3/28/24.
//

import SwiftUI

struct PlanetsView: View {
    var body: some View {
        VStack {
            PlanetCardView(planetName: "Mercury", planetDescription: "1st Planet from Sun", planetImage: "Mercury", orbitNumber: 1)
            PlanetCardView(planetName: "Venus", planetDescription: "2nd Planet", planetImage: "Venus", orbitNumber: 2)
            PlanetCardView(planetName: "Earth", planetDescription: "3rd Rock from Sun", planetImage: "Earth", orbitNumber: 3)
            PlanetCardView(planetName: "Mars", planetDescription: "Red Rock", planetImage: "Mars", orbitNumber: 4)
        }
    }
}

#Preview {
    PlanetsView()
}
