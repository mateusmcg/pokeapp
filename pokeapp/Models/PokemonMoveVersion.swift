//
//  PokemonMoveVersion.swift
//  pokeapp
//
//  Created by Mateus Cerqueira on 03/12/19.
//  Copyright © 2019 Mateus Cerqueira. All rights reserved.
//

import Foundation

struct PokemonMoveVersion: Decodable {
    let move_learn_method: NamedAPIResource
    let version_group: NamedAPIResource
    let level_learned_at: Int
}
