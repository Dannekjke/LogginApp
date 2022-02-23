//
//  ChangeUserInfoViewController.swift
//  LogginApp
//
//  Created by Dannek on 22.02.2022.
//

import UIKit

class ChangeUserInfoViewController: UIViewController {
    
    @IBOutlet var changeUserNameTF: UITextField!
    @IBOutlet var changeFirstNameTF: UITextField!
    @IBOutlet var changeSecondNameTF: UITextField!
    @IBOutlet var changeAgeTF: UITextField!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeUserNameTF.layer.cornerRadius = 15
        changeFirstNameTF.layer.cornerRadius = 15
        changeSecondNameTF.layer.cornerRadius = 15
        changeAgeTF.layer.cornerRadius = 15
    }
}
