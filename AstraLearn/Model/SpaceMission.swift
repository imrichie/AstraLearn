//
//  SpaceMission.swift
//  AstraLearn
//
//  Created by Richie Flores on 4/6/24.
//

import Foundation

struct SpaceMission: Identifiable {
    let id = UUID()
    let name: String
    let year: Int
    let duration: Int
    let numberOfCrew: Int
    let imageName: String
    let fourthMetricDescription: String
    let fourthMetric: Int
    
    // computed property for duration string
    var durationFormatted: String {
        "\(duration) days"
    }
    
}

// data model
let spaceMissions: [SpaceMission] = [
    SpaceMission(name: "GT-9 Gemini 9A", year: 1966, duration: 3, numberOfCrew: 2, imageName: "GT-9", fourthMetricDescription: "Number of EVAs", fourthMetric: 1),
    SpaceMission(name: "Apollo 10", year: 1966, duration: 8, numberOfCrew: 3, imageName: "Apollo-10", fourthMetricDescription: "Speed", fourthMetric: 24791),
    SpaceMission(name: "Apollo 11", year: 1969, duration: 8, numberOfCrew: 3, imageName: "Apollo-11", fourthMetricDescription: "Moonwalks", fourthMetric: 1),
    SpaceMission(name: "Apollo 13", year: 1970, duration: 5, numberOfCrew: 3, imageName: "Apollo-13", fourthMetricDescription: "Modules Docked", fourthMetric: 0),
    SpaceMission(name: "STS 1", year: 1981, duration: 2, numberOfCrew: 2, imageName: "STS-1", fourthMetricDescription: "Orbits around Earth", fourthMetric: 36)
]
