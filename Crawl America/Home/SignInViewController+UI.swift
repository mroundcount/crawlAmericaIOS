//
//  SignInViewController+UI.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/13/23.
//

import UIKit

extension SignInViewController {
    
    func setUpBackground() {
        self.view.backgroundColor = UIColor.black
    }
    
    func setUpCloseBtn() {
        closeBtn.setImage(UIImage(named: "close-1"), for: .normal)
        closeBtn.backgroundColor = UIColor.yellow
        closeBtn.layer.cornerRadius = 15
    }
    
    func setUpTitleTextLbl() {
        let title = "Sign In"
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font : UIFont.init(name: "Arial Hebrew", size: 35)!, NSAttributedString.Key.foregroundColor : UIColor.yellow])
        titleTxtLbl.attributedText = attributedText
        titleTxtLbl.textAlignment = .center
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
    
    func setUpSignInBtn() {
        signInBtn.setTitle("Sign In", for: UIControl.State.normal)
        signInBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        signInBtn.backgroundColor = UIColor.white
        signInBtn.layer.cornerRadius = 27.5
        signInBtn.clipsToBounds = true
        signInBtn.setTitleColor(.black, for: UIControl.State.normal)
        signInBtn.backgroundColor = UIColor.yellow
    }
    
    func setUpSignUpBtn() {
        //copy attributed string key values from SignUpViewController+UI
        let attributedText = NSMutableAttributedString(string: "Don't have an account? ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor : UIColor.white])
        
        let attributedSubText = NSMutableAttributedString(string: "Sign Up", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor.yellow])
        
        attributedText.append(attributedSubText)
        signUpBtn.setAttributedTitle(attributedText, for: UIControl.State.normal)
    }
    
    
    func setUpForgotPasswordBtn() {
        forgotPasswordBtn.setTitle("Forgot Password", for: UIControl.State.normal)
        forgotPasswordBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        forgotPasswordBtn.setTitleColor(.white, for: .normal)
        forgotPasswordBtn.backgroundColor = UIColor.clear
        forgotPasswordBtn.layer.borderWidth = 2
        forgotPasswordBtn.layer.cornerRadius = 15
        forgotPasswordBtn.clipsToBounds = true
        forgotPasswordBtn.layer.borderColor = UIColor.yellow.cgColor
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
        self.view.frame.origin.y = -100 // Move view x points upward
    }
    
    @objc func keyboardWillHide(sender: NSNotification) {
        self.view.frame.origin.y = 0 // Move view to original position
    }

    func textFieldShouldReturn(_ emailTextField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func textFieldShouldReturnII(_ passwordTextField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    //Dismissing the keyboard. Looks for the repsonder to the text field to give up the statis.
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
