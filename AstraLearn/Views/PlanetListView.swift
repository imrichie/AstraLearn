//
//  PlanetsView.swift
//  AstraLearn
//
//  Created by Richie Flores on 3/28/24.
//

import SwiftUI

struct PlanetListView: View {
    // import planet data 
    private let planets: [Planet] = [.mercury, .venus, .earth, .mars, .jupiter, .saturn, .uranus, .neptune, .pluto]
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                PlanetCardView(planet: .earth)
            }
        }
    }
}

#Preview {
    PlanetListView()
}
