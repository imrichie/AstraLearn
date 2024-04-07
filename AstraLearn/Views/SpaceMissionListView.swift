//
//  SpaceMissionListView.swift
//  AstraLearn
//
//  Created by Richie Flores on 4/4/24.
//

import SwiftUI

struct SpaceMissionListView: View {
    let planets: [SpaceMission] = spaceMissions
    
    var body: some View {
        ZStack {
            // background
            Color.black
                .ignoresSafeArea()
            
            VStack {
                Image("Apollo-10")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .white, radius: 10)
                
                Image("Apollo-11")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .white, radius: 10)
                
                Image("Apollo-13")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .white, radius: 10)
            }
            .padding()
        }
    }
}

#Preview {
    SpaceMissionListView()
}
