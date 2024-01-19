//
//  ProfileViewController+UI.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/17/23.
//

import UIKit

extension ProfileViewController {
    
    func setUpBackground() {
        self.view.backgroundColor = UIColor.black
    }
    
    func setUpPreviewView() {
        previewView.backgroundColor = UIColor.black
    }
    
    func setUpProfileAvatarImg() {
        profileAvatarImg.layer.cornerRadius = 60
        profileAvatarImg.clipsToBounds = true
        profileAvatarImg.contentMode = . scaleAspectFill
        profileAvatarImg.image=UIImage(named: "profile1")
        profileAvatarImg.layer.borderWidth = 1
        profileAvatarImg.layer.borderColor = UIColor.yellow.cgColor
    }
    
    func setUpNameLbl() {
        nameLbl.text = "Tyler S."
        nameLbl.textAlignment = .left
        nameLbl.textColor = UIColor.yellow
    }
    
    func setUpAgeLbl() {
        AgeLbl.text = "33 Years Old"
        AgeLbl.textAlignment = .left
        AgeLbl.textColor = UIColor.yellow
    }
    
    func setUpHometownLbl() {
        hometownLbl.text = "Denver, CO"
        hometownLbl.textAlignment = .left
        hometownLbl.textColor = UIColor.yellow
    }
    
    func setUpOptionsView() {
        optionsView.backgroundColor = UIColor.black
    }
    
    func setUpPurchaseBtn() {
        purchaseBtn.backgroundColor = UIColor.yellow
        purchaseBtn.layer.borderWidth = 2
        purchaseBtn.layer.borderColor = UIColor.yellow.cgColor
        purchaseBtn.layer.cornerRadius = 45
        purchaseBtn.clipsToBounds = true
        purchaseBtn.setImage(UIImage(named: "dollar_sign"), for: .normal)
        purchaseBtn.imageView?.contentMode = .scaleAspectFit
    }
    
    func setUpPurchaseLbl() {
        purchaseLbl.text = "Purchase"
        purchaseLbl.textAlignment = .center
        purchaseLbl.textColor = UIColor.yellow
    }
    
    func setUpOptionsBtn() {
        optionsBtn.backgroundColor = UIColor.yellow
        optionsBtn.layer.borderWidth = 2
        optionsBtn.layer.borderColor = UIColor.yellow.cgColor
        optionsBtn.layer.cornerRadius = 45
        optionsBtn.clipsToBounds = true
    }
    
    func setUpOptionsLbl() {
        optionsLbl.text = "Options"
        optionsLbl.textAlignment = .center
        optionsLbl.textColor = UIColor.yellow
    }
    
    func setUpNameTagBtn() {
        nameTagBtn.backgroundColor = UIColor.yellow
        nameTagBtn.layer.borderWidth = 2
        nameTagBtn.layer.borderColor = UIColor.yellow.cgColor
        nameTagBtn.layer.cornerRadius = 45
        nameTagBtn.clipsToBounds = true
    }
    
    func setUpNameTagLbl() {
        nameTagLbl.text = "Name Tag"
        nameTagLbl.textAlignment = .center
        nameTagLbl.textColor = UIColor.yellow
    }
    
    func setUpPhotosBtn() {
        photosBtn.backgroundColor = UIColor.yellow
        photosBtn.layer.borderWidth = 2
        photosBtn.layer.borderColor = UIColor.yellow.cgColor
        photosBtn.layer.cornerRadius = 45
        photosBtn.clipsToBounds = true
    }
    
    func setUpPhotosLbl() {
        photosLbl.text = "Photos"
        photosLbl.textAlignment = .center
        photosLbl.textColor = UIColor.yellow
    }
    
    func setUpMyCrawlsBtn() {
        myCrawlsBtn.backgroundColor = UIColor.yellow
        myCrawlsBtn.layer.borderWidth = 2
        myCrawlsBtn.layer.borderColor = UIColor.yellow.cgColor
        myCrawlsBtn.layer.cornerRadius = 45
        myCrawlsBtn.clipsToBounds = true
    }
    
    func setUpMyCrawlsLbl() {
        myCrawlsLbl.text = "My Crawls"
        myCrawlsLbl.textAlignment = .center
        myCrawlsLbl.textColor = UIColor.yellow
    }
    
    
    
    func setupTableView() {
        profileTableView.separatorStyle = .none
        profileTableView.backgroundColor = UIColor.black
        // profileTableView.delegate = self
        // profileTableView.dataSource = self
    }
}
