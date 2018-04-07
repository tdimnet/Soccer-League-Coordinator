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
 J'ai :
    - Un tableau contenant les novices.
    - Un tableau contenant les bons.
    - Le nombre de joueurs novices a avoir par team
    - Le nombre de joueurs bons a avoir par team
 
 Je dois :
    - Mettre 3 joueurs bons dans chaque equipe
    - Mettre 3 joueurs novices dans chaque equipe
 
 Je :
    - Boucle dans mon tableau de joueurs experimentes.
    - J'ajoute le joueur dans le tableau de l'equipe.
    - J'enleve le joueur dans le tableau des joueurs experimentes
    - Quand j'attends trois, j'arrete la boucle
 */

for _ in 0..<numberOfExperimentedPlayerPerTeam {
    teamRaptors.append(experimentedPlayers[experimentedPlayers.count - 1])
    experimentedPlayers.remove(at: experimentedPlayers.count - 1)
}

for _ in 0..<numberOfExperimentedPlayerPerTeam {
    teamSharks.append(experimentedPlayers[experimentedPlayers.count - 1])
    experimentedPlayers.remove(at: experimentedPlayers.count - 1)
}

for _ in 0..<numberOfExperimentedPlayerPerTeam {
    teamDragons.append(experimentedPlayers[experimentedPlayers.count - 1])
    experimentedPlayers.remove(at: experimentedPlayers.count - 1)
}

print("XP Players \(experimentedPlayers.count)")
print("Team shark: \(teamSharks)")
print("Team dragon: \(teamDragons)")
print("Team raptors: \(teamRaptors)")







