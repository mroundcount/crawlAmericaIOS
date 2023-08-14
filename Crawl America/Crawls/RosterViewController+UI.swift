//
//  RosterViewController+UI.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/15/23.
//

import UIKit

extension RosterViewController{
    
    func setUpBackground() {
        self.view.backgroundColor = UIColor.black
    }
    
    func setUpCloseBtn() {
        closeBtn.tintColor = UIColor.yellow
    }
    
    func setUpTitleTextLbl() {
        let title = "Tonight's Guests"
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font : UIFont.init(name: "Arial Hebrew", size: 25)!, NSAttributedString.Key.foregroundColor : UIColor.yellow])
        titleTextLbl.attributedText = attributedText
        titleTextLbl.textAlignment = .center
    }
    
    func setupTableView() {
        rosterTableView.separatorStyle = .none
        rosterTableView.backgroundColor = UIColor.black
        rosterTableView.delegate = self
        rosterTableView.dataSource = self
    }
    
    
}
