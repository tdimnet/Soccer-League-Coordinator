//
//  main.swift
//  Soccer-League-Coordinator
//
//  Created by Thomas Dimnet on 07/04/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

let player: [String: Any] = [
    "name": "Joe Smith",
    "height": 42,
    "soccerExperience": true,
    "guardian": "Jim and Jan Smith"
]

print(player["name"] ?? "foo")
