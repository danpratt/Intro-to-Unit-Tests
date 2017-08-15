//
//  PersonTests.swift
//  Intro to Unit Tests
//
//  Created by Daniel Pratt on 8/15/17.
//  Copyright © 2017 Daniel Pratt. All rights reserved.
//

import XCTest
@testable import Intro_to_Unit_Tests

class PersonTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    func test_init_shouldTakeName() {
        let person = Person(name: "John Smith")
        XCTAssertEqual(person.name, "John Smith")
    }
    
}
