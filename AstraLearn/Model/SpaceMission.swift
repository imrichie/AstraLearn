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
    SpaceMission(name: "GT-9 Gemini 9A", 
                 year: 1966, 
                 duration: 3,
                 numberOfCrew: 2,
                 imageName: "GT-9",
                 fourthMetricDescription: "Number of EVAs", 
                 fourthMetric: 1),
    
    SpaceMission(name: "Apollo 10", 
                 year: 1966, 
                 duration: 8,
                 numberOfCrew: 3,
                 imageName: "Apollo-10",
                 fourthMetricDescription: "Speed", 
                 fourthMetric: 24791),
    
    SpaceMission(name: "Apollo 11", 
                 year: 1969, 
                 duration: 8,
                 numberOfCrew: 3,
                 imageName: "Apollo-11",
                 fourthMetricDescription: "Moonwalks", 
                 fourthMetric: 1),
    
    SpaceMission(name: "Apollo 13", 
                 year: 1970,
                 duration: 5, 
                 numberOfCrew: 3,
                 imageName: "Apollo-13",
                 fourthMetricDescription: "Modules Docked", 
                 fourthMetric: 0),
    
    SpaceMission(name: "STS 1", 
                 year: 1981, duration: 2,
                 numberOfCrew: 2,
                 imageName: "STS-1",
                 fourthMetricDescription: "Orbits around Earth", 
                 fourthMetric: 36),
    
    SpaceMission(name: "STS 7",
                 year: 1983,
                 duration: 6,
                 numberOfCrew: 5,
                 imageName: "STS-7",
                 fourthMetricDescription: "Satellites Deployed",
                 fourthMetric: 2),
    
    SpaceMission(name: "STS 28", 
                 year: 1988,
                 duration: 5,
                 numberOfCrew: 5,
                 imageName: "STS-28",
                 fourthMetricDescription: "Classifed Payloads",
                 fourthMetric: 1),
    
    SpaceMission(name: "STS 31", 
                 year: 1990, duration: 5,
                 numberOfCrew: 5,
                 imageName: "STS-31",
                 fourthMetricDescription: "Deployed Statellites",
                 fourthMetric: 1),
    
    SpaceMission(name: "SpaceX Demo-2", 
                 year: 2020, duration: 64, 
                 numberOfCrew: 2,
                 imageName: "Demo-2",
                 fourthMetricDescription: "Commercial Flight",
                 fourthMetric: 1),
    
    SpaceMission(name: "Expedition 66",
                 year: 2021,
                 duration: 180,
                 numberOfCrew: 6,
                 imageName: "Expedition-66",
                 fourthMetricDescription: "Spacewalks",
                 fourthMetric: 4)
]
