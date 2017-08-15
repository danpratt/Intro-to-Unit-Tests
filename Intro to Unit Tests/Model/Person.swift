//
//  Person.swift
//  Intro to Unit Tests
//
//  Created by Daniel Pratt on 8/15/17.
//  Copyright © 2017 Daniel Pratt. All rights reserved.
//

import Foundation

struct Person {
    let name: String!
    let hairColor: String?
    
    init(name: String, hairColor: String? = nil) {
        self.name = name
        self.hairColor = hairColor
    }
}
