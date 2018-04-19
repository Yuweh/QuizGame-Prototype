//
//  RegisterViewController.swift
//  Quizzler
//
//  Created by Republisys on 19/04/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {
    
    
    //Pre-linked IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    @IBAction func registerPressed(_ sender: AnyObject) {
        
        SVProgressHUD.show()
        
        //TODO: Set up a new user on our Firbase database
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil {
                print(error!)
                SVProgressHUD.dismiss()
                ProgressHUD.showError("Login Error")
                //self.performSegue(withIdentifier: "goToRoot2", sender: self)
            } else {
                //Success
                print("Registration Successful")
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToMenu2", sender: self)
            }
        }
    }
    
    @IBAction func cancelPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToRoot2", sender: self)
    }
    
    
    
}

