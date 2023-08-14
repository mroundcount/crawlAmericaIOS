//
//  TicketViewController+UI.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/26/23.
//

import UIKit

extension TicketViewController {
    
    func setUpBackground() {
        self.view.backgroundColor = UIColor.white
    }
    
    func setUpBackgroundImg() {
        backgroundImg.frame(forAlignmentRect: .infinite)
        let backgroundGif = UIImage.gifImageWithName("lavaLamp")
        backgroundImg.image = backgroundGif
        backgroundImg.contentMode = . scaleAspectFill
    }
    
    func setUpCloseBtn() {
        //closeBtn.setImage(UIImage(named: "chevron.backward"), for: .normal)
        closeBtn.tintColor = UIColor.black
        closeBtn.backgroundColor = UIColor.clear
        //closeBtn.layer.cornerRadius = 15
    }
    
    func setUpNameLbl() {
        nameLbl.text = "Katherine S."
        nameLbl.font = UIFont.boldSystemFont(ofSize: 20.0)
        nameLbl.textColor = UIColor.black
        nameLbl.textAlignment = .center
    }
    
    func setUpProfileAvatarImg() {
        profileAvatarImg.layer.cornerRadius = 40
        profileAvatarImg.clipsToBounds = true
        profileAvatarImg.contentMode = . scaleAspectFill
        profileAvatarImg.image=UIImage(named: "profile1")
        profileAvatarImg.layer.borderWidth = 2
        profileAvatarImg.layer.borderColor = UIColor.yellow.cgColor
    }
    
    func setUpBarLbl() {
        barLbl.text = "The Naughti Rabbi"
        barLbl.font = UIFont.boldSystemFont(ofSize: 20.0)
        barLbl.textColor = UIColor.black
        barLbl.textAlignment = .center
    }
    
    func setUpCrawlLbl() {
        let attributedTermsText = NSMutableAttributedString(string: "Crawl America 9/9/2023 Phoenix ", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 20), NSAttributedString.Key.foregroundColor : UIColor.black
                                                                                                                   ])
        let attributedTermsSubTitle = NSMutableAttributedString(string: "(8:30pm - 9:45pm)", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20), NSAttributedString.Key.foregroundColor : UIColor.black])
        //The combination of the two attributed texts
        attributedTermsText.append(attributedTermsSubTitle)
        self.crawlLbl.attributedText = attributedTermsText
        self.crawlLbl.numberOfLines = 0
    }
    
    func setUpSpecialsLbl() {
        let attributedTermsText = NSMutableAttributedString(string: "Half off Motzah | ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20), NSAttributedString.Key.foregroundColor : UIColor.black])
        let attributedTermsSubTitle = NSMutableAttributedString(string: "Menorah Mojitos", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20), NSAttributedString.Key.foregroundColor : UIColor.black])
        //The combination of the two attributed texts
        attributedTermsText.append(attributedTermsSubTitle)
        self.specialsLbl.attributedText = attributedTermsText
        self.specialsLbl.numberOfLines = 0
    }
    
    

}
