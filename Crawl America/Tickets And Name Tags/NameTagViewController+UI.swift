//
//  NameTagViewController+UI.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/26/23.
//

import UIKit

extension NameTagViewController {
    
    func setUpBackground() {
        self.view.backgroundColor = UIColor.yellow
    }
    
    func setUpCloseBtn() {
        //closeBtn.setImage(UIImage(named: "chevron.backward"), for: .normal)
        closeBtn.tintColor = UIColor.black
        closeBtn.backgroundColor = UIColor.clear
        //closeBtn.layer.cornerRadius = 15
    }
    
    func setUpNameTagLbl() {
        nameTagLbl.text = "Don Keyballs"
        nameTagLbl.font = UIFont.boldSystemFont(ofSize: 28.0)
        nameTagLbl.textColor = UIColor.black
        nameTagLbl.textAlignment = .center
    }

}

