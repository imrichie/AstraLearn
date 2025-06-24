//
//  PlanetsView.swift
//  AstraLearn
//
//  Created by Richie Flores on 3/28/24.
//

import SwiftUI

struct PlanetListView: View {
    private let planets: [Planet] = [.mercury, .venus, .earth, .mars, .jupiter, .saturn, .uranus, .neptune, .pluto]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 12) {
                    ForEach(planets, id: \.self) { planet in
                        NavigationLink(destination: PlanetDetailView(selectedPlanet: planet)) {
                            PlanetCardView(planet: planet)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            .navigationTitle("Galactic Gallery")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    PlanetListView()
}
