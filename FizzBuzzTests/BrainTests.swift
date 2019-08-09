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
        XCTAssertEqual(brain.check(number: 1), .number)
    }
    
    func testSayFizz() {
        XCTAssertEqual(brain.check(number: 3), .fizz)
    }
    
    func testSayBuzz() {
        XCTAssertEqual(brain.check(number: 5), .buzz)
    }
    
    func testSayFizzBuzz() {
        XCTAssertEqual(brain.check(number: 15), .fizzBuzz)
    }

}
