//
//  PurchaseCitiesViewController+UI.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/26/23.
//

import UIKit

extension PurchaseCitiesViewController {
    
    func setUpBackground() {
        self.view.backgroundColor = UIColor.black
        self.collectionView.backgroundColor = UIColor.black
    }
    
    func setUpCloseBtn() {
        //closeBtn.setImage(UIImage(named: "chevron.backward"), for: .normal)
        closeBtn.tintColor = UIColor.yellow
        closeBtn.backgroundColor = UIColor.clear
        //closeBtn.layer.cornerRadius = 15
    }
    
    func setUpTitleTextLbl() {
        titleTextLbl.text = "Our Crawls"
        titleTextLbl.textColor = UIColor.yellow
        titleTextLbl.textAlignment = .center
    }
}
