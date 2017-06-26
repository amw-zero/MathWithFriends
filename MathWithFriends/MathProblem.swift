//
//  MathProblem.swift
//  MathWithFriends
//
//  Created by Alex Weisberger on 6/26/17.
//  Copyright © 2017 RobinDProductions. All rights reserved.
//

import Foundation

struct MathProblem {
    let expression: String
    
    static func all() -> [MathProblem] {
        return [
            MathProblem(expression: "x + 5 = 7"),
            MathProblem(expression: "2x = 20"),
        ]
    }
}
