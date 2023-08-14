//
//  ForgotPasswordViewController.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/13/23.
//

import UIKit

class ForgotPasswordViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var titleTextLbl: UILabel!
    @IBOutlet weak var emailContainerView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var resetBtn: UIButton!
    
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
        setUpResetBtn()
    }
    
    @IBAction func closeBtnDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func resetBtnDidTap(_ sender: Any) {
        print("Emailing Password Link")
    }
    

}
