//
//  PokemonStat.swift
//  pokeapp
//
//  Created by Mateus Cerqueira on 03/12/19.
//  Copyright © 2019 Mateus Cerqueira. All rights reserved.
//

import Foundation

struct PokemonStat: Decodable {
    let stat: NamedAPIResource
    let effort: Int
    let base_stat: Int
}
