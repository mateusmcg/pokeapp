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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
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
                
                self.textView?.text = String(describing: pokemon)
            }
        }, onError: { error in
            let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            self.show(alert, sender: nil)
        })
    }
}
