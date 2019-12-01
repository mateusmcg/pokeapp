//
//  SearchViewController.swift
//  pokeapp
//
//  Created by Mateus Cerqueira on 01/12/19.
//  Copyright © 2019 Mateus Cerqueira. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onRequestDataClick(_ sender: UIButton) {
        PokeApiManager.pokeApiManager.getPokemonByName(pokemonName: "gengar", onSuccess: { json in
            DispatchQueue.main.async {
                self.textView?.text = String(describing: json)
            }
        }, onError: { error in
            let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            self.show(alert, sender: nil)
        })
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
