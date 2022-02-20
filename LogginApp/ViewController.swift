//
//  ViewController.swift
//  LogginApp
//
//  Created by Dannek on 19.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    private let userName = "User"
    private let userPassword = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.layer.cornerRadius = 15
        passwordTextField.layer.cornerRadius = 15
        
        logInButton.layer.cornerRadius = 15
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userNameVC = segue.destination as? UserViewController else { return }
        userNameVC.welcomeLabelValue = "Welcome \(userName)"
    }
 
    @IBAction func logInPressed(_ sender: UIButton) {
        if userNameTextField.text != userName || passwordTextField.text != userPassword {
           
        }
    }
    @IBAction func forgotUserNamePressed(_ sender: UIButton) {
        
    
    }
    
}

