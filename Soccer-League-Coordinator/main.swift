//
//  main.swift
//  Soccer-League-Coordinator
//
//  Created by Thomas Dimnet on 07/04/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

let players: [[String: Any]] = [
    joeSmith,
    jillTanner,
    billBon,
    evaGordon,
    mattGill,
    kimmyStein,
    sammyAdams,
    karlSaygan,
    suzaneGreenberg,
    salDali,
    joeKavalier,
    benFinkelstein,
    diegoSoto,
    chloeAlaska,
    arnoldWillis,
    phillipHelm,
    lesClay,
    herschelKrustofski
]

// The three arrays of players
let numberOfTeams: Int = 3
var teamDragons: [[String: Any]] = []
var teamSharks: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []


func calculAverageHeight(team: [[String: Any]]) -> Int {
    var averageHeight: Int = 0
    
    for player in team {
        averageHeight += player["height"] as! Int
    }
    
    return averageHeight / team.count
}

let foo = calculAverageHeight(team: players)
print(foo)


// Sort the players into two distinc arrays (once for experimented and the other for novice)
func sortPlayers(fromTeam team: [[String: Any]]) -> (xpTeam: [[String: Any]], noviceTeam: [[String: Any]]) {
    var xpTeam: [[String: Any]] = []
    var noviceTeam: [[String: Any]] = []
    
    for player in team {
        if player["soccerExperience"] as! Bool {
            xpTeam.append(player)
        } else {
            noviceTeam.append(player)
        }
    }
    return (xpTeam, noviceTeam)
}

var experimentedPlayers: [[String: Any]] = sortPlayers(fromTeam: players).xpTeam
var novicePlayers: [[String: Any]] = sortPlayers(fromTeam: players).noviceTeam

let numberOfExperimentedPlayerPerTeam: Int = experimentedPlayers.count / numberOfTeams
let numberOfNovicePlayerPerTeam: Int = novicePlayers.count / numberOfTeams


func addPlayers() -> [[String: Any]] {
    var team: [[String: Any]] = []
    
    for _ in 0..<numberOfExperimentedPlayerPerTeam {
        team.append(experimentedPlayers[experimentedPlayers.count - 1])
        experimentedPlayers.remove(at: experimentedPlayers.count - 1)
    }
    
    for _ in 0..<numberOfNovicePlayerPerTeam {
        team.append(novicePlayers[novicePlayers.count - 1])
        novicePlayers.remove(at: novicePlayers.count - 1)
    }
    
    return team
}

teamRaptors = addPlayers()
teamSharks = addPlayers()
teamDragons = addPlayers()


var letters: [String] = []

func createLetters(toTeam team: [[String: Any]], teamName: String, teamPractice: String) -> Void {
    for index in 0..<teamRaptors.count {
        let letter: String = "Dear \(team[index]["guardian"] ?? ""), \(team[index]["name"] ?? "") has been selected for the team \(teamName) this year. Its first trainning will be at \(teamPractice)."
        letters.append(letter)
    }
}

createLetters(toTeam: teamRaptors, teamName: "Raptors", teamPractice: "Raptors - March 18, 1pm")
createLetters(toTeam: teamDragons, teamName: "Dragons", teamPractice: "Dragons - March 17, 1pm")
createLetters(toTeam: teamSharks, teamName: "Sharks", teamPractice: "Sharks - March 17, 3pm")


func displayLetters(letters: [String]) -> Void {
    for letter in letters {
        print("\(letter) \n")
    }
}

//displayLetters(letters: letters)












