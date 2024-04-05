//
//  ContentView.swift
//  AstraLearn
//
//  Created by Richie Flores on 3/27/24.
//

import SwiftUI

struct ContentView: View {
    // State Variables
    @State private var selectedCategory: String?
    
    // define the gradient colors
    let deepSpaceBlue   = Color(red: 0.1, green: 0.1, blue: 0.3)
    let galacticPurple  = Color(red: 0.4, green: 0.2, blue: 0.5)
    let midnightBlue    = Color(red: 0.2, green: 0.2, blue: 0.4)
    let nebulaPurple    = Color(red: 0.3, green: 0.3, blue: 0.5)
    
    var gradient: Gradient {
        Gradient(colors: [deepSpaceBlue, galacticPurple, midnightBlue, nebulaPurple, deepSpaceBlue])
    }
    
    var spaceGradient: LinearGradient {
        LinearGradient(gradient: gradient, startPoint: .topLeading, endPoint: .bottomTrailing)
    }
    
    let spaceBackground = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.8), Color.blue.opacity(0.4), Color.purple.opacity(0.6)]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Background
                spaceBackground
                    .ignoresSafeArea()
                
                // Main Content Layer
                VStack(spacing: 24) {
                    Image("Logo")
                        .frame(width: 200, height: 200)
                        .aspectRatio(contentMode: .fit)
                        .padding(.bottom, 36)
                    
                    Button {
                        selectedCategory = "Planets"
                    } label: {
                        NavigationLink(destination: PlanetListView()) {
                            Text("Planets")
                                .font(.headline)
                                .foregroundStyle(.white)
                                .padding()
                                .frame(width: 200, height: 50)
                                .background(Color.blue)
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        }
                    }
                    
                    Button {
                        selectedCategory = "Space Missions"
                    } label: {
                        NavigationLink(destination: SpaceMissionListView()) {
                            Text("Space Missions")
                                .font(.headline)
                                .foregroundStyle(.white)
                                .padding()
                                .frame(width: 200, height: 50)
                                .background(Color.purple)
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
