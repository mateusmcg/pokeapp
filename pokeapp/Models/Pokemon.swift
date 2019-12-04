//
//  Pokemon.swift
//  pokeapp
//
//  Created by Mateus Cerqueira on 01/12/19.
//  Copyright © 2019 Mateus Cerqueira. All rights reserved.
//

import SwiftyJSON

struct Pokemon: Decodable {
    let id: Int
    let name: String
    let base_experience: Int
    let height: Int
    let is_default: Bool
    let order: Int
    let weight: Int
    let abilities: [PokemonAbility]
    let forms: [NamedAPIResource]
    let game_indices: [VersionGameIndex]
    let held_items: [PokemonHeldItem]
    let location_area_encounters: String
    let moves: [PokemonMove]
    let sprites: PokemonSprites
    let species: NamedAPIResource
    let stats: [PokemonStat]
    let types: [PokemonType]
}
