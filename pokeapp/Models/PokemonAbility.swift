//
//  PokemonAbility.swift
//  pokeapp
//
//  Created by Mateus Cerqueira on 03/12/19.
//  Copyright © 2019 Mateus Cerqueira. All rights reserved.
//

import Foundation

struct PokemonAbility: Decodable {
    let is_hidden: Bool
    let slot: Int
    let ability: NamedAPIResource
}
