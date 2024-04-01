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
        gradient: Gradient(colors: [Color.black, Color.blue.opacity(0.4), Color.purple.opacity(0.6)]),
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
                        VStack(spacing: 10) {
                            ForEach(planets, id: \.self) { planet in
                                NavigationLink(destination: ContentView()) {
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
