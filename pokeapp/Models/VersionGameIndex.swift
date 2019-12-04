//
//  VersionGameIndex.swift
//  pokeapp
//
//  Created by Mateus Cerqueira on 03/12/19.
//  Copyright © 2019 Mateus Cerqueira. All rights reserved.
//

import Foundation

struct VersionGameIndex: Decodable {
    let game_index: Int
    let version: NamedAPIResource
}
