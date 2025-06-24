//
//  PlanetDetailView.swift
//  AstraLearn
//
//  Created by Richie Flores on 4/3/24.
//

import SwiftUI

struct PlanetDetailView: View {
    let selectedPlanet: Planet
    
    var body: some View {
        ZStack {
            // Background
            Color.black
                .ignoresSafeArea()
            
            // Main content layer
            VStack(spacing: 36) {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .leading, endPoint: .trailing))
                    .frame(height: 40)
                    .mask(Text(selectedPlanet.details.name.uppercased())
                        .font(.system(size: 44, weight: .bold))
                        .kerning(8))
                
                // Planet image
                Image(selectedPlanet.details.imageName)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .blue, radius: 10, x: 0, y: 0)
                
                // Metric cards
                VStack(spacing: 16) {
                    HStack(spacing: 16) {
                        MetricCardView(title: "Number of Moons",
                                       metric: "\(selectedPlanet.details.numberOfMoons)",
                                       description: "Orbiting")
                        
                        MetricCardView(title: "Orbit Period",
                                       metric: "\(selectedPlanet.details.formattedOrbitPeriod.value)",
                                       description: selectedPlanet.details.formattedOrbitPeriod.unit)
                    }
                    
                    HStack(spacing: 16) {
                        MetricCardView(title: "Diameter",
                                       metric: selectedPlanet.details.formattedDiameter,
                                       description: "Kilometers")
                        
                        MetricCardView(title: "Surface Temperature",
                                       metric: selectedPlanet.details.formattedTemperature,
                                       description: "Average")
                    }
                }
            }
        }
    }
}

#Preview {
    PlanetDetailView(selectedPlanet: Planet.earth)
}
