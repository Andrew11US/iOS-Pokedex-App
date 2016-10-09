//
//  PokeCell.swift
//  Pokedex-App
//
//  Created by Andrew Foster on 10/9/16.
//  Copyright © 2016 fosterLabs. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
 
    @IBOutlet weak var thumbIng: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 10.0
    }
    
    func configureCell(_ pokemon: Pokemon) {
        self.pokemon = pokemon
        
        nameLbl.text = self.pokemon.name.capitalized
        thumbIng.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
    
}
