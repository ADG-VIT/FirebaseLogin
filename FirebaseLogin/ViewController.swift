//
//  ViewController.swift
//  FirebaseLogin
//
//  Created by Adarsh Sinha on 19/03/18.
//  Copyright © 2018 Adarsh Sinha. All rights reserved.
//

import UIKit
import FirebaseAuth


class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func createAccountTapped(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            
            Auth.auth().createUser(withEmail: email, password: password, completion: { user, error in
                
                if let firebaseError = error {
                    print(firebaseError.localizedDescription)
                    return
                }
                
                print("Success!")
                
                
                
                
            })
        }
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            
            Auth.auth().signIn(withEmail: email, password: password, completion: {user, error in
                
                if let firebaseError = error {
                    
                    print(firebaseError.localizedDescription)
                    return
                }
                
                print("Success!!!")
                
                
                
            })
            
            
        }
    }
}

