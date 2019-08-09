//
//  ViewControllerTests.swift
//  FizzBuzzTests
//
//  Created by Dario Campagna on 07/08/2019.
//  Copyright © 2019 ESTECO. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerTests: XCTestCase {

    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = (storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController)
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testHasGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testMove1IncrementsScore() {
        viewController.play(move: .number)
        XCTAssertEqual(viewController.gameScore, 1)
    }
    
    func testMove2IncrementsScore() {
        viewController.play(move: .number)
        viewController.play(move: .number)
        XCTAssertEqual(viewController.gameScore, 2)
    }
    
    func testMoveFizzIncrementsScore() {
        viewController.game?.score = 2
        viewController.play(move: .fizz)
        XCTAssertEqual(viewController.gameScore, 3)
    }
    
    func testMoveBuzzIncrementsScore() {
        viewController.game?.score = 4
        viewController.play(move: .buzz)
        XCTAssertEqual(viewController.gameScore, 5)
    }
    
    func testMoveFizzBuzzIncrementsScore() {
        viewController.game?.score = 14
        viewController.play(move: .fizzBuzz)
        XCTAssertEqual(viewController.gameScore, 15)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        viewController.play(move: .fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 0)
    }

}
