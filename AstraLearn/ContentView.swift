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
    @State private var showQuiz: Bool = false
    @State private var showAlert1: Bool = false
    @State private var showAlert2: Bool = false
    
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
                
                Button(action: {
                    selectedCategory = "Planets"
                    showAlert1 = true
                }, label: {
                    Text("Planets")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 2))
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                })
                .alert("Planet Quiz", isPresented: $showAlert1) {
                    Button("Dismiss", role: .none) {}
                } message: {
                    if let selectedCategory = selectedCategory {
                        Text("You selected to view \(selectedCategory)")
                    } else {
                        Text("Opened Planets")
                    }
                }
                
                Button(action: {
                    selectedCategory = "Space Missions"
                    showAlert2 = true
                }, label: {
                    Text("Space Missions")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.purple)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 2))
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                })
                .alert("Space Mission Quiz", isPresented: $showAlert2) {
                    Button("Dismiss", role: .none) {}
                } message: {
                    if let selectedCategory = selectedCategory {
                        Text("You selected to view \(selectedCategory)")
                    } else {
                        Text("Opened Space Missions")
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
