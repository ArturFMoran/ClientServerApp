//
//  ViewController.swift
//  ClientServerApp
//
//  Created by Artur Felipe Moran on 16.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var welcomeView: UIView!
    @IBOutlet weak var welcomLabel: UILabel!
    @IBOutlet weak var loginAndPasswordStack: UIStackView!
    @IBOutlet weak var loginTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func signIn(_ sender: Any)
    {
        (loginTextfield.text == "user") && (passwordTextfield.text == "password") ? print("ok") : print("something wrong")
    }
    
}

