//
//  PokemonSprites.swift
//  pokeapp
//
//  Created by Mateus Cerqueira on 03/12/19.
//  Copyright © 2019 Mateus Cerqueira. All rights reserved.
//

import Foundation

struct PokemonSprites: Decodable {
    let front_default: String?
    let front_shiny: String?
    let front_female: String?
    let front_shiny_female: String?
    let back_default: String?
    let back_shiny: String?
    let back_female: String?
    let back_shiny_female: String?
}
