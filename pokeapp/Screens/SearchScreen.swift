//
//  SearchViewController.swift
//  pokeapp
//
//  Created by Mateus Cerqueira on 01/12/19.
//  Copyright © 2019 Mateus Cerqueira. All rights reserved.
//

import UIKit

class SearchScreen: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var pokemonSprite: UIImageView!
    @IBOutlet weak var pokemonName: UILabel!
    @IBOutlet weak var pokemonTypes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        navigationItem.title = "PokéApp"
    }
    
    func setupPokemonInPage(pokemon: Pokemon) -> Void {
//        self.pokemonContainer.isHidden = false
        self.pokemonSprite.downloaded(from: pokemon.sprites.front_default!)
        self.pokemonName.text = String(pokemon.id) + " - " + pokemon.name.capitalized
        self.pokemonTypes.text = pokemon.types.map { $0.type.name.capitalized }.joined(separator: " - ")
//
//        self.pokemonAtkValue.text = String(pokemon.stats.filter { $0.stat.name == "attack"}[0].base_stat)
//
//        self.pokemonDefValue.text = String(pokemon.stats.filter { $0.stat.name == "defense"}[0].base_stat)
//
//        self.pokemonHpValue.text = String(pokemon.stats.filter { $0.stat.name == "hp"}[0].base_stat)
//
//        self.pokemonSpecialAtkValue.text = String(pokemon.stats.filter { $0.stat.name == "special-attack"}[0].base_stat)
//
//        self.pokemonSpecialDefValue.text = String(pokemon.stats.filter { $0.stat.name == "special-defense"}[0].base_stat)
//
//        self.pokemonSpeedValue.text = String(pokemon.stats.filter { $0.stat.name == "speed"}[0].base_stat)
    }
}

extension SearchScreen: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        
        PokeApiManager.pokeApiManager.getPokemonByName(pokemonName: searchBar.text?.lowercased() ?? "", onSuccess: { (pokemon: Pokemon?) in
            DispatchQueue.main.async {
                if(pokemon == nil) {
                    self.textView?.text = "No Pokemon Found!"
                    return
                }
                
                self.setupPokemonInPage(pokemon: pokemon!)
                
                self.textView?.text = String(describing: pokemon)
            }
        }, onError: { error in
            let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            self.show(alert, sender: nil)
        })
    }
}
