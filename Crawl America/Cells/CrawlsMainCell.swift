//
//  CrawlsMainCell.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/14/23.
//

import UIKit

class CrawlMainCell: UITableViewCell {
    
    @IBOutlet weak var crawlLbl: UILabel!
    @IBOutlet weak var statusLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCell()
    }
    
    func setUpCell() {
        setUpBackground()
        setUpCrawlLbl()
        setUpStatusLbl()
    }
    
    func setUpBackground() {
        self.backgroundColor = UIColor.black
    }
    
    func setUpCrawlLbl() {
        let attributedTermsText = NSMutableAttributedString(string: "Santa Fe ", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 20), NSAttributedString.Key.foregroundColor : UIColor.yellow])
        
        let attributedTermsSubTitle = NSMutableAttributedString(string: "9/15/2023", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20), NSAttributedString.Key.foregroundColor : UIColor.white])
        
        //The combination of the two attributed texts
        attributedTermsText.append(attributedTermsSubTitle)
        
        self.crawlLbl.attributedText = attributedTermsText
        self.crawlLbl.numberOfLines = 0
    }
    
    func setUpStatusLbl() {
        self.statusLbl.textColor = UIColor.white
        self.statusLbl.text = "Upcoming"
    }
}
