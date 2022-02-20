//
//  UserViewController.swift
//  LogginApp
//
//  Created by Dannek on 19.02.2022.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeLabelValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeLabelValue
    }
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
    
}
