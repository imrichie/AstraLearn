//
//  MissionDescriptionView.swift
//  AstraLearn
//
//  Created by Richie Flores on 4/12/24.
//

import SwiftUI

struct MissionDescriptionView: View {
    let selectedMission: SpaceMission
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text(selectedMission.missionCategory)
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .padding(5)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        
                        Text(String(selectedMission.year))
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .padding(5)
                            .background(Color.indigo)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                    }
                    
                    Text("Mission Details")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    Text(selectedMission.missionDescription)
                        .font(.body)
                        .foregroundStyle(.secondary)
                        .padding(.horizontal)
                    
                    Text("Crew Members")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    Spacer()
                    Spacer()
                    Button(action: {
                        isPresented = false 
                    }, label: {
                        Text("Close")
                            .font(.headline)
                            .foregroundStyle(Color.blue)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 12)
                                .fill(Color.gray.opacity(0.2))
                            )
                            .padding(.horizontal)
                    })
                }
                .padding()
            }
            .navigationTitle(Text(selectedMission.name))
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    MissionDescriptionView(selectedMission: spaceMissions[3], isPresented: .constant(false))
}
