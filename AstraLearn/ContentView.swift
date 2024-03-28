//
//  ContentView.swift
//  AstraLearn
//
//  Created by Richie Flores on 3/27/24.
//

import SwiftUI

struct ContentView: View {
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
                Text("Hello, World!")
                    .font(.largeTitle.weight(.thin))
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
