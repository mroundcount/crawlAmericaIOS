//
//  RosterCell.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/15/23.
//

import UIKit

class RosterCell: UITableViewCell {
    
    @IBOutlet weak var profileAvatarImg: UIImageView!
    @IBOutlet weak var usernameLbl: UILabel!
    @IBOutlet weak var hometownLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCell()
    }
    
    func setUpCell() {
        setUpBackground()
        setUpProfileAvatarImg() 
        setUpUsernameLbl()
        setUpHometownLbl()
    }
    
    func setUpBackground() {
        self.backgroundColor = UIColor.black
    }
    
    func setUpProfileAvatarImg() {
        profileAvatarImg.layer.cornerRadius = 40
        profileAvatarImg.clipsToBounds = true
        profileAvatarImg.contentMode = . scaleAspectFill
        profileAvatarImg.image=UIImage(named: "profile1")
        profileAvatarImg.layer.borderWidth = 1
        profileAvatarImg.layer.borderColor = UIColor.yellow.cgColor
    }
    
    func setUpUsernameLbl() {
        self.usernameLbl.text = "Katherine H."
        self.usernameLbl.textColor = UIColor.white
    }
    
    func setUpHometownLbl() {
        self.hometownLbl.text = "Seattle, WA"
        self.hometownLbl.textColor = UIColor.white
    }
    
}
