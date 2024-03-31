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
                .frame(width: 84, height: 84)
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
        .frame(width: 350, height: 100, alignment: .center)
        .background(Color(UIColor.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(radius: 8)
        .padding(.horizontal, 16)
    }
}

#Preview {
    PlanetCardView(planet: .earth)
}
