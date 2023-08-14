//
//  BarProfileViewController+UI.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/30/23.
//

import UIKit

extension BarProfileViewController {
    
    func setUpUI() {
        setUpBackground()
        setUpText()
        setUpLargeBarImageView()
        
        setUpBarTitleForPopup()
        setUpBarTitle()
        setUpBarSpecials()
        setUpBarAddress()
    }
    
    func setUpBackground() {
        self.view.backgroundColor = UIColor.black
    }
    
    func setUpBarTitleForPopup() {
        popupItem.title = barInfo
    }
    
    func setUpBarTitle() {
        let attributedTermsText = NSMutableAttributedString(string: "\(barInfo) \n", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18), NSAttributedString.Key.foregroundColor : UIColor.yellow])
        
        let attributedTermsSubTitle = NSMutableAttributedString(string: "Jew unto others as you would have them Jew unto you. Join us at The Naughty Rabbi in downtown Denver for a Hasidic-ly good time. Exact change only please. NO REFUNDS!!!", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor.white])
        
        attributedTermsText.append(attributedTermsSubTitle)
        
        barInfoLbl.attributedText = attributedTermsText
        barInfoLbl.numberOfLines = 0
    }
    
    func setUpBarSpecials() {
        let attributedTermsText = NSMutableAttributedString(string: "Tonight's Specials \n", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18), NSAttributedString.Key.foregroundColor : UIColor.yellow])
        
        let attributedTermsSubTitle = NSMutableAttributedString(string: "Menorah Mojitos: 9 for the price of 1 \nHalf off Motzah", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor.white])
        
        attributedTermsText.append(attributedTermsSubTitle)
        
        barSpecialsLbl.attributedText = attributedTermsText
        barSpecialsLbl.numberOfLines = 0
    }
    
    func setUpBarAddress() {
        let attributedTermsText = NSMutableAttributedString(string: "Address \n", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18), NSAttributedString.Key.foregroundColor : UIColor.yellow])
        
        let attributedTermsSubTitle = NSMutableAttributedString(string: "7 Shone Halakhot, Jerusalem 80204", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor.white])
        
        attributedTermsText.append(attributedTermsSubTitle)
        
        barAddressLbl.attributedText = attributedTermsText
        barAddressLbl.numberOfLines = 0
    }

    
    func setUpText() {
        barInfoLbl.textColor = UIColor.white
        barSpecialsLbl.textColor = UIColor.white
        barAddressLbl.textColor = UIColor.white
        timeRemainingLbl.textColor = UIColor.white
    }
    
    func setUpLargeBarImageView() {
        barAvatarImg.layer.cornerRadius = 16
        barAvatarImg.clipsToBounds = true
    }
    
    
}
