//
//  CrawlsMainViewController+UI.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/14/23.
//

import UIKit
import Foundation

extension CrawlMainViewController {
    
    func setUpBackground() {
        self.view.backgroundColor = UIColor.black
    }
    
    func setUpTitleTextLbl() {
        let title = "My Crawls"
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font : UIFont.init(name: "Arial Hebrew", size: 25)!, NSAttributedString.Key.foregroundColor : UIColor.yellow])
        titleTextLbl.attributedText = attributedText
        titleTextLbl.textAlignment = .center
    }
    
    func setupTableView() {
        myCrawlsTableView.separatorStyle = .none
        myCrawlsTableView.backgroundColor = UIColor.black
        myCrawlsTableView.delegate = self
        myCrawlsTableView.dataSource = self
    }
}
