//
//  ViewController.swift
//  MathWithFriends
//
//  Created by Alex Weisberger on 6/26/17.
//  Copyright © 2017 RobinDProductions. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    static let problemTitles = [
        "Problem 1",
        "Problem 2"
    ]
    var selectedMathProblem: MathProblem {
        return MathProblem.all()[problemListingTableView.indexPathForSelectedRow!.row]
    }
    
    @IBOutlet weak var problemListingTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProblemListingTableViewCell")!
        cell.textLabel?.text = type(of: self).problemTitles[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! MathProblemViewController
        destinationVC.mathProblem = selectedMathProblem
    }
}

