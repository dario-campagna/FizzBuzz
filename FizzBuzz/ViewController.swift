//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Dario Campagna on 02/08/2019.
//  Copyright © 2019 ESTECO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberButton: UIButton!
    var game: Game?
    var gameScore: Int? {
        didSet {
            guard let unwrappedGameScore = gameScore else {
                print("Game score is nil!")
                return
            }
            numberButton.setTitle("\(unwrappedGameScore)", for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        gameScore = unwrappedGame.score
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        playNew(move: .number)
    }
    
    func playNew(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }

}

