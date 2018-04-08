//
//  main.swift
//  Soccer-League-Coordinator
//
//  Created by Thomas Dimnet on 07/04/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

let players: [[String: String]] = [
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
var teamDragons: [[String: String]] = []
var teamSharks: [[String: String]] = []
var teamRaptors: [[String: String]] = []

var novicePlayers: [[String: String]] = []
var experimentedPlayers: [[String: String]] = []


for player in players {
    if player["soccerExperience"] == "Yes" {
        experimentedPlayers.append(player)
    } else {
        novicePlayers.append(player)
    }
}

var numberOfExperimentedPlayerPerTeam: Int = experimentedPlayers.count / numberOfTeams
var numberOfNovicePlayerPerTeam: Int = novicePlayers.count / numberOfTeams

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

//

print("Total XP Players available \(experimentedPlayers.count)")
print("Total Novice Players available \(experimentedPlayers.count)")
print("Team shark: \(teamSharks)")
print("Team dragon: \(teamDragons)")
print("Team raptors: \(teamRaptors)")







