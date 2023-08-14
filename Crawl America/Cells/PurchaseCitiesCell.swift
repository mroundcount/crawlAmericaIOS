//
//  PurchaseCitiesCell.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/26/23.
//

import UIKit

class PurchaseCitiesCell: UICollectionViewCell{
    
    @IBOutlet weak var cityAvatarImg: UIImageView!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var textBackgroundView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCell()
    }
    
    func setUpCell() {
        setUpBackground()
        setUpCityAvatarImg()
        setUpCityLbl()
        setUpTextBackgroundView()
    }
    
    func setUpBackground() {
        self.backgroundColor = UIColor.clear
    }
    
    func setUpCityAvatarImg() {
        cityAvatarImg.clipsToBounds = true
        cityAvatarImg.layer.cornerRadius = 10
        cityAvatarImg.contentMode = .scaleAspectFill
        cityAvatarImg.image=UIImage(named: "seattle")
    }
    
    func setUpCityLbl() {
        cityLbl.text = "Seattle"
        cityLbl.textColor = UIColor.white
        cityLbl.backgroundColor = UIColor.clear
    }
    
    func setUpTextBackgroundView() {
        textBackgroundView.backgroundColor = .clear
        let blurEffect = UIBlurEffect(style: .light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.alpha = 0.75
        blurView.translatesAutoresizingMaskIntoConstraints = false
        textBackgroundView.insertSubview(blurView, at: 0)
        
        NSLayoutConstraint.activate([
          blurView.topAnchor.constraint(equalTo: textBackgroundView.topAnchor),
          blurView.leadingAnchor.constraint(equalTo: textBackgroundView.leadingAnchor),
          blurView.heightAnchor.constraint(equalTo: textBackgroundView.heightAnchor),
          blurView.widthAnchor.constraint(equalTo: textBackgroundView.widthAnchor)
        ])
    }
}
