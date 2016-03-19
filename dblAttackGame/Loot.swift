//
//  Loot.swift
//  dblAttackGame
//
//  Created by Noe Garcia on 3/19/16.
//  Copyright © 2016 Noe Garcia. All rights reserved.
//

import Foundation

class Loot: Character {
    
    var loot: [String] {
        return ["Humanity","Technology","Animals","Vegetation","Aviation"]
    }
    
    func dropLoot() -> String? {
        
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
    }
    
}