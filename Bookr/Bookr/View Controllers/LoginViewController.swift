//
//  LoginViewController.swift
//  Bookr
//
//  Created by John Kouris on 9/24/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import UIKit

enum LoginType {
    case signUp
    case signIn
}

class LoginViewController: UIViewController {
    
    @IBOutlet var loginSegmentedControl: UISegmentedControl!
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var signUpButton: UIButton!
    
    var apiController: APIController?
    var loginType = LoginType.signUp
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
        guard let apiController = apiController else { return }
        
        guard let username = usernameTextField.text,
            !username.isEmpty,
            let password = passwordTextField.text,
            !password.isEmpty else { return }
        
        let user = User(username: username, password: password)
        
        if loginType == .signUp {
            apiController.signUp(with: user) { (error) in
                if let error = error {
                    print("Error occurred during sign up: \(error.localizedDescription)")
                } else {
                    DispatchQueue.main.async {
                        let alert = UIAlertController(title: "Sign Up Successful", message: "Now please sign in.", preferredStyle: .alert)
                        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                        alert.addAction(okAction)
                        self.present(alert, animated: true, completion: {
                            self.loginSegmentedControl.selectedSegmentIndex = 1
                            self.loginType = .signIn
                            self.signUpButton.setTitle("Sign In", for: .normal)
                        })
                    }
                }
            }
        } else if loginType == .signIn {
            apiController.signIn(with: user) { (error) in
                if let error = error {
                    print("Error occurred during sign in: \(error.localizedDescription)")
                } else {
                    DispatchQueue.main.async {
                        self.dismiss(animated: true, completion: nil)
                    }
                }
            }
        }
    }
    
    @IBAction func signUpTypeChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            loginType = .signUp
            signUpButton.setTitle("Sign Up", for: .normal)
        } else {
            loginType = .signIn
            signUpButton.setTitle("Sign In", for: .normal)
        }
    }
    
    
}
