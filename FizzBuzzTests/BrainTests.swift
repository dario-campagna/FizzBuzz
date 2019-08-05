//
//  BrainTest.swift
//  FizzBuzzTests
//
//  Created by Dario Campagna on 02/08/2019.
//  Copyright © 2019 ESTECO. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {

    let brain = Brain()
    
    func testNoTranslation() {
        XCTAssertEqual(brain.say(number: 1), "1")
    }
    
    func testSayFizz() {
        XCTAssertEqual(brain.say(number: 3), "Fizz")
    }
    
    func testSayBuzz() {
        XCTAssertEqual(brain.say(number: 5), "Buzz")
    }
    
    func testSayFizzBuzz() {
        XCTAssertEqual(brain.say(number: 15), "FizzBuzz")
    }

}
