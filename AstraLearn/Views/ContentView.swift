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
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Background
                spaceGradient
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
                        NavigationLink(destination: PlanetsView()) {
                            Text("Planets")
                                .font(.headline)
                                .foregroundStyle(.white)
                                .padding()
                                .frame(width: 200, height: 50)
                                .background(Color.blue)
                                .clipShape(RoundedRectangle(cornerRadius: 25))
                                .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 2))
                                .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        }
                    }
                    
                    Button {
                        selectedCategory = "Space Missions"
                    } label: {
                        NavigationLink(destination: PlanetsView()) {
                            Text("Space Missions")
                                .font(.headline)
                                .foregroundStyle(.white)
                                .padding()
                                .frame(width: 200, height: 50)
                                .background(Color.purple)
                                .clipShape(RoundedRectangle(cornerRadius: 25))
                                .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 2))
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
