//
//  PlanetCardView.swift
//  AstraLearn
//
//  Created by Richie Flores on 3/30/24.
//

import SwiftUI

struct PlanetCardView: View {
    // accept a planet enum case
    let planet: Planet
    
    var body: some View {
        HStack {
            // Planet Image
            Image(planet.details.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .padding(.leading, 16)
            
            // Planet Name and Description
            VStack(alignment: .leading, spacing: 4) {
                Text(planet.details.name)
                    .font(.headline)
                Text(planet.details.notableFact)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            // Orbit Number
            Text("\(planet.details.orbitNumber)")
                .font(.system(size: 64))
                .fontWeight(.bold)
                .padding(.trailing, 16)
            
        }
        .frame(width: 350, height: 116, alignment: .center)
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 2)
        .padding(.horizontal)
    }
}

#Preview {
    PlanetCardView(planet: .earth)
}
