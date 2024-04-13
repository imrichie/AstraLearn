//
//  SpaceMissionDetailView.swift
//  AstraLearn
//
//  Created by Richie Flores on 4/10/24.
//

import SwiftUI

struct SpaceMissionDetailView: View {
    @State private var showDescriptionSheet: Bool = false
    let selectedMission: SpaceMission
    
    var body: some View {
        ZStack {
            // TODO: background layer
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 36) {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .leading, endPoint: .trailing))
                    .frame(height: 40)
                    .mask(Text(selectedMission.name.uppercased())
                        .font(.system(size: 44, weight: .bold))
                        .kerning(8)
                        .minimumScaleFactor(0.8))
                
                Image(selectedMission.imageName)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .blue, radius: 3)
                    .onTapGesture {
                        showDescriptionSheet = true
                    }
                    .sheet(isPresented: $showDescriptionSheet, content: {
                        MissionDescriptionView(selectedMission: selectedMission, isPresented: $showDescriptionSheet)
                    })
                
                // metric cards
                VStack(spacing: 16) {
                    HStack(spacing: 16) {
                        MetricCardView(title: "Date of Mission", metric: String(selectedMission.year), description: "Launch Year")
                        MetricCardView(title: "Number of Crew", metric: String(selectedMission.numberOfCrew), description: "Astronauts")
                    }
                    
                    HStack(spacing: 16) {
                        MetricCardView(title: "Mission Duration", metric: String(selectedMission.duration), description: "Total Time - Days")
                        MetricCardView(title: selectedMission.fourthMetricDescription, metric: String(selectedMission.fourthMetric), description: "Completed")
                    }
                }
            }
        }
    }
}

#Preview {
    SpaceMissionDetailView(selectedMission: spaceMissions[4])
}
