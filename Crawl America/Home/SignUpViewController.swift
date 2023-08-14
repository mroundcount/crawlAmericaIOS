//
//  SignUpViewController.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/13/23.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var titleTextLbl: UILabel!
    @IBOutlet weak var emailContainerView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordContainerView: UIView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        setUpKeyboard()
    }
    
    func setUpUI() {
        setUpCloseBtn()
        setUpBackground()
        setUpTitleTextLbl()
        setUpEmailTxt()
        setUpPasswordTxt()
        setUpSignUpBtn()
        setUpSignInBtn()
    }
    
    @IBAction func closeBtnDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func signUpBtnDidTap(_ sender: Any) {
        print("Registering")
    }
    
    @IBAction func signInBtnDidTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let signIn = storyboard.instantiateViewController(withIdentifier: IDENTIFIER_SIGN_IN) as! SignInViewController
        self.navigationController?.pushViewController(signIn, animated: true)
    }
}
