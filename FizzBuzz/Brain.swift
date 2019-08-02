//
//  Brain.swift
//  FizzBuzz
//
//  Created by Dario Campagna on 02/08/2019.
//  Copyright © 2019 ESTECO. All rights reserved.
//

import Foundation

class Brain {
    
    func say(number: Int) -> String {
        if isMultipleOf(divisor: 15, number: number) {
            return "FizzBuzz"
        } else if isMultipleOf(divisor: 3, number: number) {
            return "Fizz"
        } else if isMultipleOf(divisor: 5, number: number) {
            return "Buzz"
        } else {
            return "\(number)"
        }
    }
    
    fileprivate func isMultipleOf(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
}
