//
//  ViewController.swift
//  ClientServerApp
//
//  Created by Artur Felipe Moran on 16.06.2023.
//

import UIKit

private let segueToMenu = "fromMainToMenu"

class ViewController: UIViewController {

    @IBOutlet var welcomeView: UIView!
    @IBOutlet weak var welcomLabel: UILabel!
    @IBOutlet weak var loginAndPasswordStack: UIStackView!
    @IBOutlet weak var loginTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var warningLabel: UILabel!
    
    @IBAction func unwindToMain(segue: UIStoryboardSegue) {}
    
    func warning(){
        warningLabel.text = "Wrong username or password!"
        warningLabel.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        warningLabel.alpha = 0.7
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
                view.addGestureRecognizer(tapGesture)
        loginTextfield.borderStyle = .line
        passwordTextfield.borderStyle = .line

    }

    @objc func hideKeyboard() {
            view.endEditing(true)
        }
    
    @IBAction func signIn(_ sender: Any){
        guard let user = loginTextfield.text, let password = passwordTextfield.text else {
            print("Empty")
            return
        }
        
        user == "user" && password == "password" ? performSegue(withIdentifier: segueToMenu, sender: nil) : warning()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        warningLabel.text = ""
    }
    
}

