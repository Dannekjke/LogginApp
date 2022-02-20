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
        
        logInButton.layer.cornerRadius = 10
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
        let alertUserName = UIAlertController(title: "Your User Name is", message: "User", preferredStyle: .alert)
        let okActionUserName = UIAlertAction(title: "OK", style: .default) { [self]_ in
            self.userNameTextField?.text = ""
        }
        alertUserName.addAction(okActionUserName)
        present(alertUserName, animated: true)
    }
    
    @IBAction func forgotUserPasswordPressed(_ sender: UIButton) {
        let alertUserPassword = UIAlertController(title: "Your User Password is", message: "Password", preferredStyle: .alert)
        let okActionUserPassword = UIAlertAction(title: "OK", style: .default) { [self]_ in
            self.passwordTextField?.text = ""
        }
        alertUserPassword.addAction(okActionUserPassword)
        present(alertUserPassword, animated: true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
}

