//
//  CrawlPhotosCell.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/26/23.
//

import UIKit

class CrawlPhotosCell: UICollectionViewCell{
    
    
    @IBOutlet weak var uploadedImg: UIImageView!
    @IBOutlet weak var uploadUserLbl: UILabel!
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
        uploadedImg.clipsToBounds = true
        uploadedImg.layer.cornerRadius = 10
        uploadedImg.contentMode = .scaleAspectFill
        uploadedImg.image=UIImage(named: "crawlPhoto1")
    }
    
    func setUpCityLbl() {
        uploadUserLbl.text = "Lucas R"
        uploadUserLbl.textColor = UIColor.white
        uploadUserLbl.backgroundColor = UIColor.clear
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
