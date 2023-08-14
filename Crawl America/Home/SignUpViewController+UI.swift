//
//  SignUpViewController+UI.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/13/23.
//

import UIKit

extension SignUpViewController {
    
    func setUpBackground() {
        self.view.backgroundColor = UIColor.black
    }
    
    func setUpCloseBtn() {
        closeBtn.setImage(UIImage(named: "close-1"), for: .normal)
        closeBtn.backgroundColor = UIColor.yellow
        closeBtn.layer.cornerRadius = 15
    }
    
    func setUpTitleTextLbl() {
        let title = "Sign Up"
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font : UIFont.init(name: "Arial Hebrew", size: 35)!, NSAttributedString.Key.foregroundColor : UIColor.yellow])
        titleTextLbl.attributedText = attributedText
        titleTextLbl.textAlignment = .center
    }
    
    func setUpEmailTxt() {
        emailContainerView.layer.borderWidth = 2
        emailContainerView.layer.borderColor = UIColor.yellow.cgColor
        emailContainerView.layer.cornerRadius = 27.5
        emailContainerView.clipsToBounds = true
        emailContainerView.backgroundColor = UIColor.clear
        emailTextField.borderStyle = .none
        
        let placeholderAttr = NSAttributedString(string: "Email Address", attributes: [NSAttributedString.Key.foregroundColor : UIColor.yellow])
        
        emailTextField.attributedPlaceholder = placeholderAttr
        emailTextField.textColor = UIColor.yellow
    }
    
    func setUpPasswordTxt() {
        passwordContainerView.layer.borderWidth = 2
        passwordContainerView.layer.borderColor = UIColor.yellow.cgColor
        passwordContainerView.layer.cornerRadius = 27.5
        passwordContainerView.clipsToBounds = true
        passwordContainerView.backgroundColor = UIColor.clear
        passwordTextField.borderStyle = .none
        
        let placeholderAttr = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.yellow])
        
        passwordTextField.attributedPlaceholder = placeholderAttr
        passwordTextField.textColor = UIColor.yellow
    }
    
    func setUpSignUpBtn() {
        signUpBtn.setTitle("Sign Up", for: UIControl.State.normal)
        signUpBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        signUpBtn.backgroundColor = UIColor.white
        signUpBtn.layer.cornerRadius = 27.5
        signUpBtn.clipsToBounds = true
        signUpBtn.setTitleColor(.black, for: UIControl.State.normal)
        signUpBtn.backgroundColor = UIColor.yellow
    }
    
    func setUpSignInBtn() {
        let attributedText = NSMutableAttributedString(string: "Already have an account? ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor : UIColor.white])
        
        let attributedSubText = NSMutableAttributedString(string: "Sign In", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor.yellow])
        
        attributedText.append(attributedSubText)
        signInBtn.setAttributedTitle(attributedText, for: UIControl.State.normal)
    }
    
    func setUpKeyboard() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(sender:)), name: UIResponder.keyboardWillShowNotification, object: nil);
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(sender:)), name: UIResponder.keyboardWillHideNotification, object: nil);
        
        //Setting up the keyboard to dismiss
        emailTextField.returnKeyType = UIReturnKeyType.done
        self.emailTextField.delegate = self
        passwordTextField.returnKeyType = UIReturnKeyType.done
        self.passwordTextField.delegate = self
    }
    
    //Moving up the keyboard
    @objc func keyboardWillShow(sender: NSNotification) {
        self.view.frame.origin.y = -75 // Move view x points upward
    }
    
    @objc func keyboardWillHide(sender: NSNotification) {
        self.view.frame.origin.y = 0 // Move view to original position
    }

    func textFieldShouldReturn(_ emailTxt: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func textFieldShouldReturnII(_ passwordTxt: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    //Dismissing the keyboard. Looks for the repsonder to the text field to give up the statis.
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
