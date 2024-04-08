//
//  SpaceMissionListView.swift
//  AstraLearn
//
//  Created by Richie Flores on 4/4/24.
//

import SwiftUI

struct SpaceMissionListView: View {
    let missions: [SpaceMission] = spaceMissions
    
    var body: some View {
        NavigationStack {
            ZStack {
              // background layer
                
                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(missions) { mission in
                            SpaceMissionCardView(mission: mission)
                        }
                    }
                }
                .navigationTitle("Space Missions")
                .navigationBarTitleDisplayMode(.large)
            }
        }
    }
}

#Preview {
    SpaceMissionListView()
}
