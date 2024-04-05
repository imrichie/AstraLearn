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
        gradient: Gradient(colors: [Color.blue.opacity(0.4), Color.purple.opacity(0.5), Color.black.opacity(0.7)]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    
    var body: some View {
            NavigationStack {
                ZStack {
                    // background layer
                    spaceBackground
                        .ignoresSafeArea()
                    
                    // main content layer
                    ScrollView {
                        VStack(spacing: 8) {
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
