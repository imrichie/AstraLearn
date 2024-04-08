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
                // background
                Color.gray
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(missions) { mission in
                            Image(mission.imageName)
                                .resizable()
                                .scaledToFit()
                                .shadow(color: .yellow, radius: 10, x: 0, y: 0)
                                .padding(.bottom, 16)
                        }
                    }
                }
                .navigationTitle("Galactic Gallery")
                .navigationBarTitleDisplayMode(.large)
            }
        }
    }
}

#Preview {
    SpaceMissionListView()
}
