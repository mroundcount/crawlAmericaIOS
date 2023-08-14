//
//  ProfileOptionsTableViewController+UI.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/24/23.
//

import UIKit

extension ProfileOptionsTableViewController {
    
    func setUpBackground() {
        self.view.backgroundColor = UIColor.black
        self.tableView.backgroundColor = UIColor.black
    }
    
    func setUpCloseBtn() {
        //closeBtn.setImage(UIImage(named: "chevron.backward"), for: .normal)
        closeBtn.tintColor = UIColor.yellow
        closeBtn.backgroundColor = UIColor.clear
        //closeBtn.layer.cornerRadius = 15
    }
    
    func setUpTitleTextLbl() {
        titleTxtLbl.text = "Options"
        titleTxtLbl.textColor = UIColor.yellow
        titleTxtLbl.textAlignment = .center
    }
    
    func setUpProfileAvatarImg() {
        profileAvatarImg.image=UIImage(named: "profile2")
        profileAvatarImg.clipsToBounds = true
        profileAvatarImg.contentMode = .scaleToFill
        profileAvatarImg.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(presentPicker))
        profileAvatarImg.addGestureRecognizer(tapGesture)
    }
    
    func setUpNameTextField() {
        nameTextField.attributedPlaceholder = NSAttributedString(
            string: "Your Name",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        nameTextField.textColor = UIColor.white
    }
    
    func setUpDOBTextField() {
        DOBTextField.attributedPlaceholder = NSAttributedString(
            string: "DOB",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        DOBTextField.textColor = UIColor.white
    }
    
    func setUpHometownTextField() {
        homeTownTextField.attributedPlaceholder = NSAttributedString(
            string: "Hometown",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        homeTownTextField.textColor = UIColor.white
    }
    
    func setUpRelationshipStatusLbl() {
        relationshipStatus.text = "Relationship Status"
        relationshipStatus.textColor = UIColor.white
    }
    
    func setUpFAQLbl() {
        FAQLbl.text = "FAQs"
        FAQLbl.textColor = UIColor.white
    }
    
    func setUpCallForHelpLbl() {
        callForHelpLbl.text = "Help"
        callForHelpLbl.textColor = UIColor.white
    }
    
    func setUpPrivacyPolicyLbl() {
        privacyPolicyLbl.text = "Privacy Policy"
        privacyPolicyLbl.textColor = UIColor.white
    }
    
    func setUpTermsOfServiceLbl() {
        termsOfServiceLbl.text = "Terms of Service"
        termsOfServiceLbl.textColor = UIColor.white
    }

    func setUpSaveBtn() {
        self.saveBtn.setTitle("Save Updates", for: UIControl.State.normal)
        self.saveBtn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        self.saveBtn.tintColor = UIColor.black
        self.saveBtn.backgroundColor = UIColor.yellow
        self.saveBtn.layer.cornerRadius = 27.5
        self.saveBtn.clipsToBounds = true
    }
    
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let returnedView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.size.width, height: 20))

        let firstLabel = UILabel(frame: CGRect(x: 8, y: 15, width: tableView.bounds.size.width, height: 25))
        let subLabel = UILabel(frame: CGRect(x: 8, y: -3, width: tableView.bounds.size.width, height: 25))
        if (section == 0) {
            firstLabel.text = "Edit Info"
        } else if (section == 1) {
            subLabel.text = "Help"
        } else if (section == 2) {
            subLabel.text = "Terms"
        } else if (section == 3) {
            subLabel.text = "Logout"
        } else if (section == 4) {
            subLabel.text = "Delete Account"
        }
                
        firstLabel.textColor = UIColor.yellow
        subLabel.textColor = UIColor.yellow
        
        firstLabel.font = UIFont.boldSystemFont(ofSize: 18.0)
        subLabel.font = UIFont.boldSystemFont(ofSize: 18.0)
        
        returnedView.addSubview(firstLabel)
        returnedView.addSubview(subLabel)

        return returnedView
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundColor = UIColor.clear
    }
    
    func setUpKeyboard() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(sender:)), name: UIResponder.keyboardWillShowNotification, object: nil);
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(sender:)), name: UIResponder.keyboardWillHideNotification, object: nil);

        //Setting up the keyboard to dismiss
        nameTextField.returnKeyType = UIReturnKeyType.done
        self.nameTextField.delegate = self
        DOBTextField.returnKeyType = UIReturnKeyType.done
        self.DOBTextField.delegate = self
        homeTownTextField.returnKeyType = UIReturnKeyType.done
        self.homeTownTextField.delegate = self

        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    //Moving up the keyboard
    @objc func keyboardWillShow(sender: NSNotification) {
        self.view.frame.origin.y = -100 // Move view x points upward
    }
    
    @objc func keyboardWillHide(sender: NSNotification) {
        self.view.frame.origin.y = 0 // Move view to original position
    }

    func textFieldShouldReturn(_ nameTextField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func textFieldShouldReturnII(_ DOBTextField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func textFieldShouldReturnIII(_ homeTownTextField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    //Dismissing the keyboard. Looks for the repsonder to the text field to give up the statis.
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
