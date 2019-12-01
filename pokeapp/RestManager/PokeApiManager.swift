//
//  PokeApiManager.swift
//  pokeapp
//
//  Created by Mateus Cerqueira on 01/12/19.
//  Copyright © 2019 Mateus Cerqueira. All rights reserved.
//

import UIKit

import SwiftyJSON

class PokeApiManager: NSObject {
    let baseUrl = "https://pokeapi.co/api/v2/";
    
    static let pokeApiManager = PokeApiManager();
    
    static let pokemonPath = "pokemon/";
    
    func getPokemonByName(pokemonName: String, onSuccess: @escaping(JSON) -> Void, onError: @escaping(Error) -> Void) {
        let url: String = baseUrl + PokeApiManager.pokemonPath + pokemonName
        
        let request: NSMutableURLRequest = NSMutableURLRequest(url: NSURL(string: url)! as URL)
        request.httpMethod = "GET"
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: request as URLRequest, completionHandler: {data, response, error -> Void in
            if(error != nil) {
                onError(error!)
            } else {
                let result = JSON(data)
                onSuccess(result)
            }
        })
        
        task.resume()
    }
}
