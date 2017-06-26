//
//  MathProblemViewController.swift
//  MathWithFriends
//
//  Created by Alex Weisberger on 6/26/17.
//  Copyright © 2017 RobinDProductions. All rights reserved.
//

import UIKit

class MathProblemViewController: UIViewController {
    var mathProblem: MathProblem!

    @IBOutlet weak var expressionLabel: UILabel!
    
    override func viewDidLoad() {
        assert(mathProblem != nil)
        expressionLabel.text = mathProblem.expression
    }
}
