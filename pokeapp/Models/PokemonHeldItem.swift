//
//  PokemonHeldItem.swift
//  pokeapp
//
//  Created by Mateus Cerqueira on 03/12/19.
//  Copyright © 2019 Mateus Cerqueira. All rights reserved.
//

import Foundation

struct PokemonHeldItem: Decodable {
    let item: NamedAPIResource
    let version_details: [PokemonHeldItemVersion]
}
