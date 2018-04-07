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

var novicePlayers: [[String: String]] = []
var experimentedPlayers: [[String: String]] = []

for player in players {
    if player["soccerExperience"] == "Yes" {
        experimentedPlayers.append(player)
    } else {
        novicePlayers.append(player)
    }
}

print("The number of experimented players is \(experimentedPlayers.count)")
print("The number of novice players is \(novicePlayers.count)")







