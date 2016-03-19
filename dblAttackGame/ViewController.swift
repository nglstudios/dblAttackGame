//
//  ViewController.swift
//  dblAttackGame
//
//  Created by Noe Garcia on 3/19/16.
//  Copyright © 2016 Noe Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var centerLbl: UILabel!
    @IBOutlet weak var leftHpLbl: UILabel!
    @IBOutlet weak var rightHpLbl: UILabel!
    
    @IBOutlet weak var leftAttackBtn: UIButton!
    @IBOutlet weak var rightAttackBtn: UIButton!
    @IBOutlet weak var earthBtn: UIButton!
    
    var left: Player!
    var right: Enemy!
    var game: GameState!
    var earth: Loot!
    var hp: Int!
    var ap: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        startGame()
        
    }
    
    func startGame() {
        hp = Int(arc4random_uniform(25)) + 1
        ap = Int(arc4random_uniform(3)) + 1
        leftHpLbl.text = "HP: \(hp)"
        rightHpLbl.text = "HP: \(hp)"
        left = Player(name: "Tatu", hp: hp, attackPwr: ap)
        right = Enemy(name: "Meow", hp: hp, attackPwr: ap)
        game = GameState(playerOne: left, playerTwo: right, vc: self)
        centerLbl.text = "\(left.name) Vs \(right.name)"
        earthBtn.hidden = true
    }
    
    @IBAction func leftAttack(sender: AnyObject) {
        right.attemptAttack(left.attackPwr)
        game.updateHp(right)
    }
    
    @IBAction func rightAttack(sender: AnyObject) {
        left.attemptAttack(right.attackPwr)
        game.updateHp(left)
    }
    
    @IBAction func earthBtn(sender: AnyObject) {
        
        centerLbl.text = "BAD"
       
    }
    
}

