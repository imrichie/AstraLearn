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
            // background
            Color.black
                .ignoresSafeArea()
            
            // main content layer
            VStack {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .leading, endPoint: .trailing))
                    .frame(height: 40)
                    .mask(Text(selectedPlanet.details.name.uppercased())
                        .font(.system(size: 44, weight: .bold)))
                    .shadow(color: .blue, radius: 10, x: 0, y: 2)
                    .kerning(8)
                    .padding(.bottom, 36)
                
                // Planet image
                Image(selectedPlanet.details.imageName)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .blue, radius: 10, x: 0, y: 0)
                    .padding(.bottom, 16)
                
                // metric cards
                VStack(spacing: 16) {
                    HStack(spacing: 16) {
                        MetricCard(title: "Moons", 
                                   metric: selectedPlanet.details.numberOfMoons,
                                   description: "Orbiting")
                        
                        MetricCard(title: "Orbit Period",
                                   metric: selectedPlanet.details.formattedOrbitPeriod.value,
                                   description: selectedPlanet.details.formattedOrbitPeriod.unit)
                    }
                    
                    HStack(spacing: 16) {
                        MetricCard(title: "Diameter", 
                                   metric: selectedPlanet.details.diameter,
                                   description: selectedPlanet.details.formattedDiameter.unit)
                        
                        MetricCard(title: "Surface Temperature",
                                   metric: selectedPlanet.details.surfaceTemperate,
                                   description: "Average Temp")
                    }
                }
            }
        }
    }
}

#Preview {
    PlanetDetailView(selectedPlanet: Planet.earth)
}
