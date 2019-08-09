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
        let response = game.play(move: .number)
        XCTAssertTrue(response.score == 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        _ = game.play(move: Move.number)
        let response = game.play(move: .number)
        XCTAssertTrue(response.score == 2)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        let response = game.play(move: .fizz)
        XCTAssertTrue(response.score == 1)
    }

    func testRightFizzMove() {
        game.score = 2;
        let response = game.play(move: .fizz)
        XCTAssertTrue(response.right)
    }
    
    func testWrongFizzMove() {
        game.score = 1;
        let response = game.play(move: .fizz)
        XCTAssertFalse(response.right)
    }
    
    func testRightBuzzMove() {
        game.score = 4;
        let response = game.play(move: .buzz)
        XCTAssertTrue(response.right)
    }
    
    func testWrongBuzzMove() {
        game.score = 2;
        let response = game.play(move: .buzz)
        XCTAssertFalse(response.right)
    }
    
    func testRightFizzBuzzMove() {
        game.score = 14;
        let response = game.play(move: .fizzBuzz)
        XCTAssertTrue(response.right)
    }
    
    func testWrongFizzBuzzMove() {
        game.score = 16;
        let response = game.play(move: .fizzBuzz)
        XCTAssertFalse(response.right)
    }
    
    func testRightNumberMove() {
        game.score = 3;
        let response = game.play(move: .number)
        XCTAssertTrue(response.right)
    }
    
    func testWrongNumberMove() {
        game.score = 5;
        let response = game.play(move: .number)
        XCTAssertFalse(response.right)
    }
    
}

