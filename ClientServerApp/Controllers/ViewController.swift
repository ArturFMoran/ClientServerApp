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
    @IBOutlet weak var signInButton: UIButton!
    @IBAction func unwindToMain(segue: UIStoryboardSegue) {}
    
    //MARK: view functions
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        signInButton.backgroundColor = .systemBlue
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
                view.addGestureRecognizer(tapGesture)
        loginTextfield.borderStyle = .line
        passwordTextfield.borderStyle = .line
    }
    
    //MARK: objc functions
    @objc func hideKeyboard() { //скрыть клавиа]туру
            view.endEditing(true)
        }
    
    //MARK: animations
    func animateSignIn(_ check: Bool) { //анимация кнопки при нажатии
        if check { //если все окей
            UIView.animate(withDuration: 0.2, animations: {
                //уменьшаем размер кнопки
                self.signInButton.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            }) {(_) in
                UIView.animate(withDuration: 0.2, animations: {
                    //возвращаем исходныый размер кнопки
                    self.warningLabel.text = " "
                    self.signInButton.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
                    self.signInButton.transform = CGAffineTransform.identity
                })
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.performSegue(withIdentifier: segueToMenu, sender: nil)
            }
        } else {//если неверные данные
            UIView.animate(withDuration: 0.2, animations: {
                //уменьшаем размер кнопки
                self.signInButton.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            }) {(_) in
                UIView.animate(withDuration: 0.2, animations: {
                    //возвращаем исходныый размер кнопки
                    self.signInButton.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
                    self.signInButton.transform = CGAffineTransform.identity
                })
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.warning()
            }
        }
    }
    
    //MARK: sign in functions
    @IBAction func signIn(_ sender: Any){
        animateSignIn(loginTextfield.text == "user" && passwordTextfield.text == "password")
    }
    
    func warning(){
        warningLabel.text = "Wrong username or password!"
        warningLabel.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        warningLabel.alpha = 0.7
    }

}

