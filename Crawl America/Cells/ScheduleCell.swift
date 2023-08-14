//
//  ScheduleCell.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/15/23.
//

import UIKit

class ScheduleCell: UITableViewCell {
    
    @IBOutlet weak var barAvatarImg: UIImageView!
    @IBOutlet weak var barNameLbl: UILabel!
    @IBOutlet weak var scheduleTimeLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCell()
    }
    
    func setUpCell() {
        setUpBackground()
        setUpBarAvatarImg()
        setUpBarNameLbl()
        setUpScheduleTimeLbl()
    }
    
    func setUpBackground() {
        self.backgroundColor = UIColor.black
    }
    
    func setUpBarAvatarImg() {
        barAvatarImg.layer.cornerRadius = 40
        barAvatarImg.clipsToBounds = true
        barAvatarImg.contentMode = . scaleAspectFill
        barAvatarImg.image=UIImage(named: "bar1")
        barAvatarImg.layer.borderWidth = 1
        barAvatarImg.layer.borderColor = UIColor.yellow.cgColor
    }
    
    func setUpBarNameLbl() {
        self.barNameLbl.text = "Fuhrer Beer Keller"
        self.barNameLbl.textColor = UIColor.white
    }
    
    func setUpScheduleTimeLbl() {
        self.scheduleTimeLbl.text = "7:00 - 8:00"
        self.scheduleTimeLbl.textColor = UIColor.white
    }
}
