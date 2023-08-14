//
//  CrawlPhotosViewController+UI.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/15/23.
//

import UIKit

extension CrawlPhotosViewController {
    
    func setUpBackground() {
        self.view.backgroundColor = UIColor.black
        self.collectionView.backgroundColor = UIColor.black
    }
    
    func setUpCloseBtn() {
        closeBtn.tintColor = UIColor.yellow
    }
    
    func setUpTitleTextLbl() {
        titleTextLbl.text = "Santa Fe 9/9/2023 Photos"
        titleTextLbl.font = UIFont.boldSystemFont(ofSize: 22.0)
        titleTextLbl.textAlignment = .center
        titleTextLbl.textColor = UIColor.yellow
    }
    
}
