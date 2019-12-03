//
//  Pokemon.swift
//  pokeapp
//
//  Created by Mateus Cerqueira on 01/12/19.
//  Copyright © 2019 Mateus Cerqueira. All rights reserved.
//

import SwiftyJSON

struct Pokemon {
    let id: String
    let name: String
    
    init(json: JSON) {
        id = json["id"].stringValue
        name = json["name"].stringValue
    }
}
