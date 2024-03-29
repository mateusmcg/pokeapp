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
    
    func getPokemonByName(pokemonName: String, onSuccess: @escaping(Pokemon?) -> Void, onError: @escaping(Error) -> Void) {
        let url: String = baseUrl + PokeApiManager.pokemonPath + pokemonName
        
        let request: NSMutableURLRequest = NSMutableURLRequest(url: NSURL(string: url)! as URL)
        request.httpMethod = "GET"
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) in
            if(error != nil) {
                onError(error!)
            } else {
                do {
                    let result = try JSONDecoder().decode(Pokemon.self, from: data!)
                    onSuccess(result)
                } catch {
                    onSuccess(nil)
                }
            }
        })
        
        task.resume()
    }
}
