//
//  PlanetsView.swift
//  AstraLearn
//
//  Created by Richie Flores on 3/28/24.
//

import SwiftUI

struct PlanetListView: View {
    // initialize planet data
    private let planets: [Planet] = [.mercury, .venus, .earth, .mars, .jupiter, .saturn, .uranus, .neptune, .pluto]
    
    let spaceBackground = LinearGradient(
        gradient: Gradient(colors: [Color.blue.opacity(0.2), Color.purple.opacity(0.2)]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    
    var body: some View {
            NavigationStack {
                ZStack {
                    
                    // main content layer
                    ScrollView {
                        VStack(spacing: 12) {
                            ForEach(planets, id: \.self) { planet in
                                NavigationLink(destination: PlanetDetailView(selectedPlanet: planet)) {
                                    PlanetCardView(planet: planet)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding(.top, 8)
                    }
                    .navigationTitle("Galactic Gallery")
                    .navigationBarTitleDisplayMode(.large)
                }
            }
    }
}

#Preview {
    PlanetListView()
}
