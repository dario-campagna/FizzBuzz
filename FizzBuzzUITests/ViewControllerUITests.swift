//
//  ViewControllerUITests.swift
//  FizzBuzzUITests
//
//  Created by Dario Campagna on 09/08/2019.
//  Copyright © 2019 ESTECO. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    func testTapNumberButtonIncrementsScore() {
        let numberButton = XCUIApplication().buttons["numberButton"]
        
        numberButton.tap()
        
        XCTAssertEqual(numberButton.label, "1")
    }
    
    func testTapNumberButtonTwiceIncrementsScore() {
        let numberButton = XCUIApplication().buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        
        XCTAssertEqual(numberButton.label, "2")
    }
    
    func testTapFizzIncrementsScoreTo3() {
        let fizzButton = XCUIApplication().buttons["fizzButton"]
        let numberButton = XCUIApplication().buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        
        XCTAssertEqual(numberButton.label, "3")
    }
    
    func testTapBuzzIncrementsScoreTo5() {
        let buzzButton = XCUIApplication().buttons["buzzButton"]
        let numberButton = XCUIApplication().buttons["numberButton"]
        
        tapTo4()
        buzzButton.tap()
        
        XCTAssertEqual(numberButton.label, "5")
    }
    
    func testTapFizzBuzzIncrementsScoreTo15() {
        let fizzBuzzButton = XCUIApplication().buttons["fizzBuzzButton"]
        let numberButton = XCUIApplication().buttons["numberButton"]
        
        tapTo14()
        fizzBuzzButton.tap()
        
        XCTAssertEqual(numberButton.label, "15")
    }
    
    fileprivate func tapTo4() {
        let numberButton = XCUIApplication().buttons["numberButton"]
        let fizzButton = XCUIApplication().buttons["fizzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
    }
    
    func testPlayAgainResetsGame() {
        let playAgainButton = XCUIApplication().buttons["playAgain"]
        let numberButton = XCUIApplication().buttons["numberButton"]
        
        numberButton.tap()
        playAgainButton.tap()
        
        XCTAssertEqual(numberButton.label, "0")
    }
    
    fileprivate func tapTo14() {
        let numberButton = XCUIApplication().buttons["numberButton"]
        let fizzButton = XCUIApplication().buttons["fizzButton"]
        let buzzButton = XCUIApplication().buttons["buzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        buzzButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
    }

}
