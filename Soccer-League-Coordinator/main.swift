//
//  main.swift
//  Soccer-League-Coordinator
//
//  Created by Thomas Dimnet on 07/04/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

/*
 Part: 1 -> Create all the players data info
 */

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


/*
 Part: 2 -> Create well balanced teams of players
 */


// Sort the players into two distinc arrays (once for experimented and the other for novice)
func sortPlayers(fromTeam team: [[String: Any]]) -> (xpTeam: [[String: Any]], noviceTeam: [[String: Any]]) {
    var xpTeam: [[String: Any]] = []
    var noviceTeam: [[String: Any]] = []
    
    for player in team {
        guard let isExperimented = player["soccerExperience"] as? Bool else { break }
        if isExperimented {
            xpTeam.append(player)
        } else {
            noviceTeam.append(player)
        }
    }
    
    return (xpTeam, noviceTeam)
}

var experimentedPlayers: [[String: Any]] = sortPlayers(fromTeam: players).xpTeam
var novicePlayers: [[String: Any]] = sortPlayers(fromTeam: players).noviceTeam

//print("experimentedPlayers => \(experimentedPlayers)\n")
//print("novicePlayers => \(novicePlayers)\n")

var sortedExperimentedPlayers = experimentedPlayers.sorted(by: { guard let h0 = $0["height"] as? Int , let h1 = $1["height"] as? Int else { return false }
return h0 > h1 })

var sortedNovicePlayers = novicePlayers.sorted(by: { guard let h0 = $0["height"] as? Int , let h1 = $1["height"] as? Int else { return false }
    return h0 < h1 })

//print("sortedExperimentedPlayers => \(sortedExperimentedPlayers)\n")
//print("sortedNovicePlayers => \(sortedNovicePlayers)\n")


let numberOfExperimentedPlayerPerTeam: Int = experimentedPlayers.count / numberOfTeams
let numberOfNovicePlayerPerTeam: Int = novicePlayers.count / numberOfTeams


func addPlayers() -> [[String: Any]] {
    var team: [[String: Any]] = []
    
    for _ in 0..<numberOfExperimentedPlayerPerTeam {
        team.append(sortedExperimentedPlayers[sortedExperimentedPlayers.count - 1])
        sortedExperimentedPlayers.remove(at: sortedExperimentedPlayers.count - 1)
    }
    
    for _ in 0..<numberOfNovicePlayerPerTeam {
        team.append(sortedNovicePlayers[sortedNovicePlayers.count - 1])
        sortedNovicePlayers.remove(at: sortedNovicePlayers.count - 1)
    }
    
    return team
}

teamRaptors = addPlayers()
teamSharks = addPlayers()
teamDragons = addPlayers()




func calculAverageHeight(team: [[String: Any]]) -> Int {
    var averageHeight: Int = 0
    
    for player in team {
        averageHeight += player["height"] as! Int
    }
    
    return averageHeight / team.count
}

//print("\(calculAverageHeight(team: players)) \n")
//print("\(calculAverageHeight(team: teamRaptors)) \n")
//print("\(calculAverageHeight(team: teamSharks)) \n")
//print("\(calculAverageHeight(team: teamDragons)) \n")


print("teamRaptors => \(teamRaptors) \n")
print("teamSharks => \(teamSharks) \n")
print("teamDragons => \(teamDragons) \n")


/*
 END: Part: 2
 */



/*
 Part: 3 -> Create the letters for the guardian
 */

var letters: [String] = []

func createLetters(toTeam team: [[String: Any]], teamName: String, teamPractice: String) -> Void {
    for index in 0..<teamRaptors.count {
        
        guard let guardianName = team[index]["guardian"] as? String else { break }
        guard let playerName = team[index]["name"] as? String else { break }
        
        let letter: String = "Dear \(guardianName), \(playerName) has been selected for the team \(teamName) this year. Its first trainning will be at \(teamPractice)."
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












