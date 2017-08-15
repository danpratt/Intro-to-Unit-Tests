//
//  ViewController.swift
//  Intro to Unit Tests
//
//  Created by Daniel Pratt on 8/15/17.
//  Copyright © 2017 Daniel Pratt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func isNumberEven(number: Int) -> Bool {
        return number % 2 == 0
    }
    
    func sumEvenValuedNumbersFibonacciSequence(limit: Int) -> Int {
        var sum = 0
        
        var a = 1
        var b = 1
        
        while b < limit {
            if b % 2 == 0 {
                sum += b
            }
            let h = a + b
            a = b
            b = h
        }
        
        return sum
    }
    
    func getLessonCoinAmount(coursePrice: Int) -> Int? {
        let lessonRewardCoinAmountPercentage = 1
        let decimal = Double(lessonRewardCoinAmountPercentage) / 100.0
        return Int(Double(coursePrice) * decimal)
    }
    
}

