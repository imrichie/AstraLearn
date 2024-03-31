//
//  PlanetCardView.swift
//  AstraLearn
//
//  Created by Richie Flores on 3/30/24.
//

import SwiftUI

struct PlanetCardView: View {
    var planetName: String
    var planetDescription: String
    var planetImage: String
    var orbitNumber: Int
    
    var body: some View {
        HStack {
            // Planet Image
            Image(planetImage)
                .resizable()
                .frame(width: 75, height: 75)
                .clipShape(Circle())
                .padding(.leading, 16)
            
            // Planet Name and Description
            VStack(alignment: .leading, spacing: 4) {
                Text(planetName)
                    .font(.headline)
                Text(planetDescription)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            // Orbit Number
            Text("\(orbitNumber)")
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
    PlanetCardView(planetName: "Earth", planetDescription: "3rd Rock from Sun", planetImage: "Earth", orbitNumber: 3)
}
