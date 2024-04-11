//
//  SpaceMissionDetailView.swift
//  AstraLearn
//
//  Created by Richie Flores on 4/10/24.
//

import SwiftUI

struct SpaceMissionDetailView: View {
    let selectedMission: SpaceMission
    
    var body: some View {
        ZStack {
            // TODO: background layer
            
            VStack {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .leading, endPoint: .trailing))
                    .frame(height: 40)
                    .mask(Text(selectedMission.name.uppercased())
                        .font(.system(size: 44, weight: .bold)))
                    .shadow(color: .blue, radius: 10, x: 0, y: 2)
                    .kerning(8)
                    .padding(.bottom, 36)
                
                Image(selectedMission.imageName)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .blue, radius: 10, x: 0, y: 0)
                    .padding(.bottom, 36)
                
                // metric cards
                VStack(spacing: 16) {
                    HStack(spacing: 16) {
                        MetricCardView(title: "Date of Mission", metric: String(selectedMission.year), description: "")
                        MetricCardView(title: "Number of Crew", metric: String(selectedMission.numberOfCrew), description: "")
                    }
                    
                    HStack(spacing: 16) {
                        MetricCardView(title: "Mission Duration", metric: String(selectedMission.duration), description: "Days")
                        MetricCardView(title: selectedMission.fourthMetricDescription, metric: String(selectedMission.fourthMetric), description: "")
                    }
                }
            }
        }
    }
}

#Preview {
    SpaceMissionDetailView(selectedMission: spaceMissions[0])
}
