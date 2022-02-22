//
//  MyProfileViewController.swift
//  LogginApp
//
//  Created by Dannek on 22.02.2022.
//

import UIKit

class MyProfileViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var firstNameLabel: UILabel!
    @IBOutlet var secondNameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var aboutMeTV: UITextView!
    
    @IBOutlet var avatarImageView: UIImageView!
    
    var user: User!
    var person: PersonInfo!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = person.userName
        firstNameLabel.text = person.name
        secondNameLabel.text = person.surname
        ageLabel.text = String(person.age)
        
        aboutMeTV.text = person.aboutInfo
        
        avatarImageView.image = UIImage(named: person.image)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let changeVC = segue.destination as? ChangeUserInfoViewController else { return }
        changeVC.user = user
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let changeVC = segue.source as? ChangeUserInfoViewController else { return }
        userNameLabel.text = changeVC.changeUserNameTF.text
        firstNameLabel.text = changeVC.changeFirstNameTF.text
        secondNameLabel.text = changeVC.changeSecondNameTF.text
        ageLabel.text = changeVC.changeAgeTF.text
        
    }
}
