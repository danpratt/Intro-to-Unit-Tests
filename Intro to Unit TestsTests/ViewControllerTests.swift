//
//  ViewControllerTests.swift
//  Intro to Unit Tests
//
//  Created by Daniel Pratt on 8/15/17.
//  Copyright © 2017 Daniel Pratt. All rights reserved.
//

import XCTest
@testable import Intro_to_Unit_Tests

class ViewControllerTests: XCTestCase {
    
    let sut: ViewController = ViewController()
    let oddNumbers = [1, 3, 5, 7, 9]
    let evenNumbers = [2, 4, 6, 8, 10]
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_isNumberEven_odd_false() {
        
        for i in oddNumbers {
            XCTAssertFalse(sut.isNumberEven(number: i))
        }
        
    }
    
    func test_isNumberEven_even_true() {
        for i in evenNumbers {
            XCTAssertTrue(sut.isNumberEven(number: i))
        }
    }
    
    func test_sumEvenValuedNumbersFibonacciSequence () {
        
        let limit = 4000000
        let answer = 4613732
        
        let funcAnswer = sut.sumEvenValuedNumbersFibonacciSequence(limit: limit)
        
        XCTAssertEqual(funcAnswer, answer, "Expeted answer: 4613732")
    }
    
    func test_CoinRewardedAmount_price100_1CoinEarned () {
        let price = 100
        let coinsEarned = 1
        
        XCTAssertEqual(sut.getLessonCoinAmount(coursePrice: price), coinsEarned)
    }
    
    func test_fibonacci_performance() {
        let limit = 4000000
        self.measure {
            let _ = self.sut.sumEvenValuedNumbersFibonacciSequence(limit: limit)
        }
    }
    
}
