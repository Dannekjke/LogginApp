//
//  UserViewController.swift
//  LogginApp
//
//  Created by Dannek on 19.02.2022.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(user.person.fullName)!"
    }
  
}
