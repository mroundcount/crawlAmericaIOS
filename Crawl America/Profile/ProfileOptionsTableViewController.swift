//
//  ProfileOptionsTableViewController.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/24/23.
//

import UIKit

class ProfileOptionsTableViewController: UITableViewController, UITextFieldDelegate {

    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var titleTxtLbl: UILabel!
    @IBOutlet weak var profileAvatarImg: UIImageView!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var DOBTextField: UITextField!
    @IBOutlet weak var homeTownTextField: UITextField!
    @IBOutlet weak var relationshipStatus: UILabel!
    
    @IBOutlet weak var saveBtn: UIButton!
    
    @IBOutlet weak var FAQLbl: UILabel!
    @IBOutlet weak var callForHelpLbl: UILabel!
    
    @IBOutlet weak var privacyPolicyLbl: UILabel!
    @IBOutlet weak var termsOfServiceLbl: UILabel!
    
    @IBOutlet weak var logOutBtn: UIButton!
    @IBOutlet weak var deleteAccountBtn: UIButton!
    
    var image: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setUpClickableLables()
        setUpKeyboard()
    }
    
    func setupUI() {
        setUpBackground()
        setUpCloseBtn()
        setUpTitleTextLbl()
        setUpProfileAvatarImg()
        setUpNameTextField()
        setUpDOBTextField()
        setUpHometownTextField()
        setUpRelationshipStatusLbl()
        setUpSaveBtn()
        setUpFAQLbl()
        setUpCallForHelpLbl()
        setUpPrivacyPolicyLbl()
        setUpTermsOfServiceLbl()
    }
    
    @IBAction func closeBtnDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func saveBtnDidTap(_ sender: Any) {
        print("Save Button Tapped")
    }
    
    @IBAction func logOutBtnDidTap(_ sender: Any) {
        print("Log Out Button Tapped")
        Api.User.logOut()
        natigateToHome()
    }
    
    @IBAction func deleteAccountBtnDidTap(_ sender: Any) {
        print("Delete Account Button Tapped")
    }
    
    @objc func presentPicker() {
        view.endEditing(true)
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        picker.delegate = self
        self.present(picker, animated: true, completion: nil)
    }
    
    func setUpClickableLables() {
        let relationshipStatusTap = UITapGestureRecognizer(target: self, action: #selector(self.relationshipStatusTap(_:)))
        self.relationshipStatus.isUserInteractionEnabled = true
        self.relationshipStatus.addGestureRecognizer(relationshipStatusTap)
        
        let privacyPolicyLblTap = UITapGestureRecognizer(target: self, action: #selector(self.privacyPolicyLblTap(_:)))
        self.privacyPolicyLbl.isUserInteractionEnabled = true
        self.privacyPolicyLbl.addGestureRecognizer(privacyPolicyLblTap)
        
        let termsOfServiceLblTap = UITapGestureRecognizer(target: self, action: #selector(self.termsOfServiceLblTap(_:)))
        self.termsOfServiceLbl.isUserInteractionEnabled = true
        self.termsOfServiceLbl.addGestureRecognizer(termsOfServiceLblTap)
    }
    
    @objc func relationshipStatusTap(_ sender: UITapGestureRecognizer) {
        print("Relationship label tapped")
    }
    
    @objc func privacyPolicyLblTap(_ sender: UITapGestureRecognizer) {
        print("Privacy label tapped")
    }
    
    @objc func termsOfServiceLblTap(_ sender: UITapGestureRecognizer) {
        print("Terms of Servie label tapped")
    }
    
    func natigateToHome() {
        print("In function")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let home = storyboard.instantiateViewController(withIdentifier: IDENTIFIER_HOME_PAGE) as! HomeViewController
        self.navigationController?.pushViewController(home, animated: true)
    }
}

extension ProfileOptionsTableViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let imageSelected = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
        {
            image = imageSelected
            profileAvatarImg.image = imageSelected
        }
        picker.dismiss(animated: true, completion: nil)
    }
}
