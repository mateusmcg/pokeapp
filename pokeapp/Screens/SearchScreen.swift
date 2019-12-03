//
//  SearchViewController.swift
//  pokeapp
//
//  Created by Mateus Cerqueira on 01/12/19.
//  Copyright © 2019 Mateus Cerqueira. All rights reserved.
//

import UIKit

class SearchScreen: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        PokeApiManager.pokeApiManager.getPokemonByName(pokemonName: searchText.lowercased(), onSuccess: { pokemon in
            DispatchQueue.main.async {
                self.textView?.text = pokemon.id + " - " + pokemon.name
            }
        }, onError: { error in
            let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            self.show(alert, sender: nil)
        })
    }
}
