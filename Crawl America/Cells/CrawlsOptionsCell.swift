//
//  CrawlsOptionsCell.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/15/23.
//

import UIKit

class CrawlOptionsCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCell()
    }
    
    func setUpCell() {
        setUpBackground()
    }
    
    func setUpBackground() {
        self.backgroundColor = UIColor.black
    }
}
