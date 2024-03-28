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
            VStack {
                Text("Welcome to Astra Learn")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .foregroundStyle(.white)
                
                Button(action: {
                    showAlert1 = true
                }, label: {
                    Text("Planets Quiz")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 2))
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                })
                .padding(.bottom)
                .alert("Planet Quiz", isPresented: $showAlert1) {
                    Button("Dismiss", role: .none) {}
                } message: {
                    Text("Quiz for the Planets")
                }
                
                Button(action: {
                    showAlert2 = true
                }, label: {
                    Text("Space Mission Quiz")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.purple)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 2))
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                })
                .padding()
                .alert("Space Mission Quiz", isPresented: $showAlert2) {
                    Button("Dismiss", role: .none) {}
                } message: {
                    Text("Quiz for Space Missions")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
