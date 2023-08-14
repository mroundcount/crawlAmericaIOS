//
//  PurchaseEventsViewController+UI.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/26/23.
//

import UIKit

extension PurchaseEventsViewController {
    
    func setUpBackground() {
        self.view.backgroundColor = UIColor.black
    }
    
    func setUpCloseBtn() {
        //closeBtn.setImage(UIImage(named: "chevron.backward"), for: .normal)
        closeBtn.tintColor = UIColor.yellow
        closeBtn.backgroundColor = UIColor.clear
        //closeBtn.layer.cornerRadius = 15
    }
    
    func setUpTitleTextLbl() {
        let title = "Seattle Crawls"
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font : UIFont.init(name: "Arial Hebrew", size: 25)!, NSAttributedString.Key.foregroundColor : UIColor.yellow])
        titleTextLbl.attributedText = attributedText
        titleTextLbl.textAlignment = .center
    }
    
    func setupTableView() {
        purchaseEventsTable.separatorStyle = .none
        purchaseEventsTable.backgroundColor = UIColor.black
        purchaseEventsTable.delegate = self
        purchaseEventsTable.dataSource = self
    }
}
