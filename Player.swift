//
//  Player.swift
//  dblAttackGame
//
//  Created by Noe Garcia on 3/19/16.
//  Copyright © 2016 Noe Garcia. All rights reserved.
//

import Foundation

class Player: Character {
    
    private var _name = "Player"
    
    override var name: String {
        get {
            return _name
        }
    }
    
    convenience init(name: String, hp: Int, attackPwr: Int) {
        self.init(startingHp: hp, attackPwr: attackPwr)
        
        _name = name
    }
}