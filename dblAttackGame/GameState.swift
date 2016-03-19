//
//  GameState.swift
//  dblAttackGame
//
//  Created by Noe Garcia on 3/19/16.
//  Copyright © 2016 Noe Garcia. All rights reserved.
//

import Foundation

class GameState: NSObject {
    
    private var _playerOne: Player!
    private var _playerTwo: Enemy!
    private var _vc: ViewController
    
    init(playerOne: Player, playerTwo: Enemy, vc: ViewController) {
        self._playerOne = playerOne
        self._playerTwo = playerTwo
        self._vc = vc
    }
    
    func restartGame() {
        self._vc.startGame()
    }
    
    func updateMessageBoard(message: String) {
        self._vc.centerLbl.text = message
    }
    
    func updateHp(character: Character) {
        if !character.isAlive {
            self.updateMessageBoard("\(character.name) Loses, click Earth to claim Loot!")
            self._vc.earthBtn.hidden = false
            NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: "restartGame", userInfo: nil, repeats: false)
        } else {
            self._vc.leftHpLbl.text = "HP: \(_playerOne.hp)"
            self._vc.rightHpLbl.text = "HP: \(_playerTwo.hp)"
        }
    }
    
}