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
    
    private let userName = User.getUserInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.layer.cornerRadius = 15
        passwordTextField.layer.cornerRadius = 15
        
        logInButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let userVC = $0 as? UserViewController {
                userVC.user = userName
            }       else if let navigationVC = $0 as? UINavigationController {
                let myProfileVC = navigationVC.topViewController as! MyProfileViewController
                myProfileVC.user = userName
            }
        }
    }
    @IBAction func logInPressed(_ sender: UIButton) {
        if userNameTextField.text != userName.login || passwordTextField.text != userName.password  {
           shawAlert(
            title: "Invalid login or password",
            message: "Please enter correct your login or password",
            textField: passwordTextField)
        }
    }
    @IBAction func forgotUserInfoPressed(_ sender: UIButton) {
        if  sender.tag == 0 {
             shawAlert(title: "Your user name is", message: userName.login)
        } else {
            shawAlert(title: "Your password is", message: userName.password)
        
        }
   }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func shawAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
}

