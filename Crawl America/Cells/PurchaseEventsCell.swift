//
//  PurchaseEventsCell.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/26/23.
//

import UIKit

class PurchaseEventsCell: UITableViewCell {
    
    @IBOutlet weak var crawlLbl: UILabel!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCell()
    }
    
    func setUpCell() {
        setUpBackground()
        setUpCrawlLbl()
        setUpTimeLbl()
        setUpPriceLbl()
    }
    
    func setUpBackground() {
        self.backgroundColor = UIColor.black
    }
    
    func setUpCrawlLbl() {
        let attributedTermsText = NSMutableAttributedString(string: "Seattle ", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 20), NSAttributedString.Key.foregroundColor : UIColor.yellow])
        
        let attributedTermsSubTitle = NSMutableAttributedString(string: "9/15/2023", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20), NSAttributedString.Key.foregroundColor : UIColor.white])
        
        //The combination of the two attributed texts
        attributedTermsText.append(attributedTermsSubTitle)
        
        self.crawlLbl.attributedText = attributedTermsText
        self.crawlLbl.numberOfLines = 0
    }
    
    func setUpTimeLbl() {
        self.timeLbl.textColor = UIColor.white
        self.timeLbl.text = "7:00pm - 12:00am"
    }
    
    func setUpPriceLbl() {
        self.priceLbl.textColor = UIColor.white
        self.priceLbl.text = "$25"
    }
}
