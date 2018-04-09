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
//    Think to add these players after code refactoring.
//    thomasDimnet,
//    jeromeDimnet,
//    alexCorbelli,
//    guillaumeBrovnic
]

// The three arrays of players
let numberOfTeams: Int = 3
var teamDragons: [[String: String]] = []
var teamSharks: [[String: String]] = []
var teamRaptors: [[String: String]] = []

var novicePlayers: [[String: String]] = []
var experimentedPlayers: [[String: String]] = []

let dateOfFirstDragonsPractice: String = "Dragons - March 17, 1pm"
let dateOfFirstSharksPractice: String = "Sharks - March 17, 3pm"
let dateOfFirstRaptorsPractice: String = "Raptors - March 18, 1pm"


for player in players {
    if player["soccerExperience"] == "Yes" {
        experimentedPlayers.append(player)
    } else {
        novicePlayers.append(player)
    }
}

let numberOfExperimentedPlayerPerTeam: Int = experimentedPlayers.count / numberOfTeams
let remainingExperimentedPlayer: Int = experimentedPlayers.count % numberOfTeams

let numberOfNovicePlayerPerTeam: Int = novicePlayers.count / numberOfTeams
let remainingNovicePlayer: Int = novicePlayers.count % numberOfTeams

/*
    Add experimented players
 */

// Team Raptors
for _ in 0..<numberOfExperimentedPlayerPerTeam {
    teamRaptors.append(experimentedPlayers[experimentedPlayers.count - 1])
    experimentedPlayers.remove(at: experimentedPlayers.count - 1)
}

// Team Sharks
for _ in 0..<numberOfExperimentedPlayerPerTeam {
    teamSharks.append(experimentedPlayers[experimentedPlayers.count - 1])
    experimentedPlayers.remove(at: experimentedPlayers.count - 1)
}

// Team Dragons
for _ in 0..<numberOfExperimentedPlayerPerTeam {
    teamDragons.append(experimentedPlayers[experimentedPlayers.count - 1])
    experimentedPlayers.remove(at: experimentedPlayers.count - 1)
}

/*
 Add novice players
 */

// Team Raptors
for _ in 0..<numberOfNovicePlayerPerTeam {
    teamRaptors.append(novicePlayers[novicePlayers.count - 1])
    novicePlayers.remove(at: novicePlayers.count - 1)
}

// Team Sharks
for _ in 0..<numberOfNovicePlayerPerTeam {
    teamSharks.append(novicePlayers[novicePlayers.count - 1])
    novicePlayers.remove(at: novicePlayers.count - 1)
}

// Team Dragons
for _ in 0..<numberOfNovicePlayerPerTeam {
    teamDragons.append(novicePlayers[novicePlayers.count - 1])
    novicePlayers.remove(at: novicePlayers.count - 1)
}

print("Total XP Players available \(experimentedPlayers.count)")
print("Total Novice Players available \(novicePlayers.count)")
print("Remaining XP Players available \(remainingExperimentedPlayer)")
print("Remaining Novice Players available \(remainingNovicePlayer)")

//print("Team shark: \(teamSharks)")
//print("Team dragon: \(teamDragons)")
//print("Team raptors: \(teamRaptors)")


/*
 Create a personnalize letter for one player.
 */

let ExampleChoosenPlayer: [String: String] = players[0]
print(ExampleChoosenPlayer)
print("Dear \(ExampleChoosenPlayer["guardian"] ?? ""), \(ExampleChoosenPlayer["name"] ?? "") has been selected for the team Dragon teams this year. Its first trainning will be at \(dateOfFirstDragonsPractice).")




