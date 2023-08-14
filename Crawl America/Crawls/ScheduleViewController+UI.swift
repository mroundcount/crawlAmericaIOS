//
//  ScheduleViewController+UI.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/15/23.
//

import UIKit

extension ScheduleViewController {
    
    func setUpBackground() {
        self.view.backgroundColor = UIColor.black
    }
    
    func setUpCloseBtn() {
        closeBtn.tintColor = UIColor.yellow
    }
    
    func setUpTitleTextLbl() {
        let title = "Tonight's Schedule"
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font : UIFont.init(name: "Arial Hebrew", size: 25)!, NSAttributedString.Key.foregroundColor : UIColor.yellow])
        titleTextLbl.attributedText = attributedText
        titleTextLbl.textAlignment = .center
    }
    
    func setupTableView() {
        scheduleTableView.separatorStyle = .none
        scheduleTableView.backgroundColor = UIColor.black
        scheduleTableView.delegate = self
        scheduleTableView.dataSource = self
    }
}
