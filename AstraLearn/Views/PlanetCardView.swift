//
//  PlanetCardView.swift
//  AstraLearn
//
//  Created by Richie Flores on 3/30/24.
//

import SwiftUI

struct PlanetCardView: View {
    let planet: Planet
    
    var body: some View {
        HStack {
            // Planet Image
            Image(planet.details.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .shadow(radius: 10)
            
            // Planet Name and Description
            VStack(alignment: .leading, spacing: 4) {
                Text(planet.details.name)
                    .font(.headline)
                
                Text(planet.details.description)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            // Orbit Number
            Text("\(planet.details.orbitNumber)")
                .font(.system(size: 64))
                .fontWeight(.bold)
        }
        .padding()
        .frame(height: 116)
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal)
    }
}
#Preview {
    PlanetCardView(planet: .earth)
}
