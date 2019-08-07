//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Dario Campagna on 02/08/2019.
//  Copyright © 2019 ESTECO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gameScore: Int?
    var game: Game?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }
    
    func play(move: String) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }

}

