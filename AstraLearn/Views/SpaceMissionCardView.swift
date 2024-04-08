//
//  SpaceMissionCardView.swift
//  AstraLearn
//
//  Created by Richie Flores on 4/7/24.
//

import SwiftUI

struct SpaceMissionCardView: View {
    let mission: SpaceMission
    
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            Image(mission.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: .blue, radius: 3)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(mission.name)
                    .font(.headline)
                    .foregroundStyle(Color.primary)
                
                Text(mission.missionDescription)
                    .font(.subheadline)
                    .foregroundStyle(Color.secondary)
                    .lineLimit(3)
                
                Text(mission.missionCategory)
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                    .padding(5)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
            }
            Spacer()
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 15)
            .fill(Color(UIColor.systemBackground)))
        .shadow(color: .gray, radius: 2, x: 0, y: 2)
        .padding(.horizontal)
    }
}

#Preview {
    SpaceMissionCardView(mission: spaceMissions[0])
}
