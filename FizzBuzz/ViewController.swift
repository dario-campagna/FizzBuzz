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
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
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
        setupNewGame()
    }
    
    @IBAction func sendMove(_ sender: UIButton) {
        switch sender {
        case numberButton:
            play(move: .number)
        case fizzButton:
            play(move: .fizz)
        case buzzButton:
            play(move: .buzz)
        case fizzBuzzButton:
            play(move: .fizzBuzz)
        default:
            print("Invalid selection")
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        setupNewGame()
    }
    
    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }
    
    fileprivate func setupNewGame() {
        game = Game()
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        gameScore = unwrappedGame.score
    }

}

