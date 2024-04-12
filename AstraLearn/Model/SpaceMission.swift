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
    let missionDescription: String
    let missionCategory: String
    let crewNames: [String]
    
    // computed property for duration string
    var durationFormatted: String {
        "\(duration) days"
    }
    
}

// data model
let spaceMissions: [SpaceMission] = [
    SpaceMission(name: "Gemini 9A",
                 year: 1966,
                 duration: 3,
                 numberOfCrew: 2,
                 imageName: "GT-9",
                 fourthMetricDescription: "Number of EVAs", 
                 fourthMetric: 1,
                 missionDescription: "Featured two rendezvous with an augmented target docking adapter and included an extravehicular activity",
                 missionCategory: "Manned", 
                 crewNames: ["Thomas P. Stafford", "Eugene A. Cernan"]),
    
    SpaceMission(name: "Apollo 10",
                 year: 1969,
                 duration: 8,
                 numberOfCrew: 3,
                 imageName: "Apollo-10",
                 fourthMetricDescription: "Lunar Orbits",
                 fourthMetric: 31,
                 missionDescription: "Served as a full rehearsal for the Apollo 11 moon landing, including all phases except the actual lunar landing",
                 missionCategory: "Lunar", 
                 crewNames: ["Thomas P. Stafford", "John W. Young", "Eugene A. Cernan"]),
    
    SpaceMission(name: "Apollo 11",
                 year: 1969,
                 duration: 8,
                 numberOfCrew: 3,
                 imageName: "Apollo-11",
                 fourthMetricDescription: "Moonwalks", 
                 fourthMetric: 1,
                 missionDescription: "Successfully conducted the first manned moon landing, marking a significant milestone in human space exploration",
                 missionCategory: "Lunar", 
                 crewNames: ["Neil A. Armstrong", "Edwin “Buzz” Aldrin", "Michael Collins"]),
    
    SpaceMission(name: "Apollo 13",
                 year: 1970,
                 duration: 5, 
                 numberOfCrew: 3,
                 imageName: "Apollo-13",
                 fourthMetricDescription: "Modules Docked", 
                 fourthMetric: 0,
                 missionDescription: "'Successful failure' that safely returned the crew after an onboard explosion in space",
                 missionCategory: "Lunar", 
                 crewNames: ["James A. Lovell", "John L. Swigert", "Fred W. Haise"]),
    
    SpaceMission(name: "STS-1",
                 year: 1981,
                 duration: 2,
                 numberOfCrew: 2,
                 imageName: "STS-1",
                 fourthMetricDescription: "Orbits around Earth", 
                 fourthMetric: 36,
                 missionDescription: "The inaugural flight of NASA's Space Shuttle program, testing the capabilities of the shuttle as a reusable spacecraft for the first time.",
                 missionCategory: "Manned", 
                 crewNames: ["John W. Young", "Robert L. Crippen"]),
    
    SpaceMission(name: "STS-7",
                 year: 1983,
                 duration: 6,
                 numberOfCrew: 5,
                 imageName: "STS-7",
                 fourthMetricDescription: "Satellites Deployed",
                 fourthMetric: 2,
                 missionDescription: "Conducted scientific experiments in space and deployed several satellites; notable for having the first American woman, Sally Ride, in space",
                 missionCategory: "Manned", 
                 crewNames: ["Robert L. Crippen", "Frederick H. Hauck", "John M. Fabian", "Sally K. Ride", "Norman E. Thagard"]),
    
    SpaceMission(name: "STS-28",
                 year: 1988,
                 duration: 5,
                 numberOfCrew: 5,
                 imageName: "STS-28",
                 fourthMetricDescription: "Classifed Payloads",
                 fourthMetric: 1,
                 missionDescription: "Classified mission that deployed a payload for the Department of Defense, showcasing the shuttle's versatility in supporting national security",
                 missionCategory: "Manned", 
                 crewNames: ["Brewster H. Shaw Jr.", "Richard N. Richards", "David C. Leestma", "James C. Adamson", "Mark N. Brown"]),
    
    SpaceMission(name: "STS-31",
                 year: 1990,
                 duration: 5,
                 numberOfCrew: 5,
                 imageName: "STS-31",
                 fourthMetricDescription: "Deployed Statellites",
                 fourthMetric: 1,
                 missionDescription: "Deployed the Hubble Space Telescope into orbit, providing humanity with an unprecedented window into the universe",
                 missionCategory: "Research", 
                 crewNames: ["Loren J. Shriver", "Charles F. Bolden Jr.", "Steven A. Hawley", "Bruce McCandless II", "Kathryn D. Sullivan"]),
    
    SpaceMission(name: "Demo-2", 
                 year: 2020, 
                 duration: 64, 
                 numberOfCrew: 2,
                 imageName: "Demo-2",
                 fourthMetricDescription: "Commercial Flight",
                 fourthMetric: 1,
                 missionDescription: "Marked the first crewed flight test of SpaceX's Crew Dragon spacecraft, symbolizing the dawn of commercial crewed spaceflight.",
                 missionCategory: "Commercial", 
                 crewNames: ["Robert L. Behnken", "Douglas G. Hurley"]),
    
    SpaceMission(name: "Expedition 66",
                 year: 2021,
                 duration: 180,
                 numberOfCrew: 6,
                 imageName: "Expedition-66",
                 fourthMetricDescription: "Spacewalks",
                 fourthMetric: 4,
                 missionDescription: "Mission to the International Space Station focused on scientific research across multiple disciplines to benefit humanity",
                 missionCategory: "Research", 
                 crewNames: ["Thomas Pesquet", "Megan McArthur", "Shane Kimbrough", "Akihito Hoshide", "Mark Vande-Hei"])
]
