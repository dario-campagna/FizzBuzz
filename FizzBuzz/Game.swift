//
//  Game.swift
//  FizzBuzz
//
//  Created by Dario Campagna on 05/08/2019.
//  Copyright © 2019 ESTECO. All rights reserved.
//

import Foundation

class Game {
    
    var score: Int
    var brain: Brain
    
    init() {
        score = 0
        brain = Brain()
    }
    
    func play(move: Move) -> (right: Bool, score: Int) {
        if isMoveRight(move) {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
    }
    
    fileprivate func isMoveRight(_ move: Move) -> Bool {
        return move == brain.check(number: score + 1)
    }
    
}
