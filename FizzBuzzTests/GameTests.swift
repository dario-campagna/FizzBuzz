//
//  GameTests.swift
//  FizzBuzzTests
//
//  Created by Dario Campagna on 05/08/2019.
//  Copyright © 2019 ESTECO. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {

    let game = Game()
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        _ = game.play(move: "1")
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        _ = game.play(move: "1")
        _ = game.play(move: "2")
        XCTAssertTrue(game.score == 2)
    }

    func testRightFizzMove() {
        game.score = 2;
        let result = game.play(move: "Fizz")
        XCTAssertTrue(result)
    }
    
    func testWrongFizzMove() {
        game.score = 1;
        let result = game.play(move: "Fizz")
        XCTAssertFalse(result)
    }
    
    func testRightBuzzMove() {
        game.score = 4;
        let result = game.play(move: "Buzz")
        XCTAssertTrue(result)
    }
    
    func testWrongBuzzMove() {
        game.score = 2;
        let result = game.play(move: "Buzz")
        XCTAssertFalse(result)
    }
    
    func testRightFizzBuzzMove() {
        game.score = 14;
        let result = game.play(move: "FizzBuzz")
        XCTAssertTrue(result)
    }
    
    func testWrongFizzBuzzMove() {
        game.score = 16;
        let result = game.play(move: "FizzBuzz")
        XCTAssertFalse(result)
    }
    
    func testRightNumberMove() {
        game.score = 3;
        let result = game.play(move: "4")
        XCTAssertTrue(result)
    }
    
    func testWrongNumberMove() {
        game.score = 5;
        let result = game.play(move: "7")
        XCTAssertFalse(result)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        _ = game.play(move: "Fizz")
        XCTAssertTrue(game.score == 1)
    }
}

