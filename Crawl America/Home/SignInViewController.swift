//
//  SignInViewController.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/13/23.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var titleTxtLbl: UILabel!
    @IBOutlet weak var emailContainerView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordContainerView: UIView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var forgotPasswordBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        setUpKeyboard()
    }
    
    func setUpUI() {
        setUpBackground()
        setUpCloseBtn()
        setUpTitleTextLbl()
        setUpEmailTxt()
        setUpPasswordTxt()
        setUpSignInBtn()
        setUpSignUpBtn()
        setUpForgotPasswordBtn()
    }
    
    @IBAction func backBtnDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func signInBtnDidTap(_ sender: Any) {
        print("Signing In")
    }
    
    
    @IBAction func signUpBtnDidTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let signUp = storyboard.instantiateViewController(withIdentifier: IDENTIFIER_SIGN_UP) as! SignUpViewController
        self.navigationController?.pushViewController(signUp, animated: true)
    }
    
    @IBAction func forgotPasswordBtnDidTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let forgotPassword = storyboard.instantiateViewController(withIdentifier: IDENTIFIER_FORGOT_PASSWORD) as! ForgotPasswordViewController
        self.navigationController?.pushViewController(forgotPassword, animated: true)
    }
    
}
