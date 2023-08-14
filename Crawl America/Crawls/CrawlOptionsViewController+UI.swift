//
//  CrawlsOptionsViewController+UI.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/15/23.
//

import UIKit
import Foundation

extension CrawlOptionsViewController {
    
    func setUpBackground() {
        self.view.backgroundColor = UIColor.black
    }
    
    func setUpCloseBtn() {
        closeBtn.tintColor = UIColor.yellow
    }
    
    func setUpTitleTextLbl() {
        titleTextLbl.text = "Santa Fe 9/9/2023"
        titleTextLbl.font = UIFont.boldSystemFont(ofSize: 22.0)
        titleTextLbl.textAlignment = .center
        titleTextLbl.textColor = UIColor.yellow
    }
    
    func setUpScheduleBtn() {
        scheduleBtn.setTitle("Crawl Schedule", for: UIControl.State.normal)
        scheduleBtn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        scheduleBtn.contentHorizontalAlignment = .left
        scheduleBtn.setTitleColor(UIColor.yellow, for: .normal)
        scheduleBtn.backgroundColor = UIColor.clear
        scheduleBtn.layer.borderWidth = 1
        scheduleBtn.layer.borderColor = UIColor.yellow.cgColor
        scheduleBtn.layer.cornerRadius = 10
        scheduleBtn.clipsToBounds = true
    }
    
    func setUpRosterBtn() {
        rosterBtn.setTitle("Roster", for: UIControl.State.normal)
        rosterBtn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        rosterBtn.contentHorizontalAlignment = .left
        rosterBtn.setTitleColor(UIColor.yellow, for: .normal)
        rosterBtn.backgroundColor = UIColor.clear
        rosterBtn.layer.borderWidth = 1
        rosterBtn.layer.borderColor = UIColor.yellow.cgColor
        rosterBtn.layer.cornerRadius = 10
        rosterBtn.clipsToBounds = true
    }
    
    func setUpNameTagBtn() {
        nameTagBtn.setTitle("Name Tag", for: UIControl.State.normal)
        nameTagBtn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        nameTagBtn.contentHorizontalAlignment = .left
        nameTagBtn.setTitleColor(UIColor.yellow, for: .normal)
        nameTagBtn.backgroundColor = UIColor.clear
        nameTagBtn.layer.borderWidth = 1
        nameTagBtn.layer.borderColor = UIColor.yellow.cgColor
        nameTagBtn.layer.cornerRadius = 10
        nameTagBtn.clipsToBounds = true
    }
    
    func setUpTicketBtn() {
        ticketBtn.setTitle("Ticket", for: UIControl.State.normal)
        ticketBtn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        ticketBtn.contentHorizontalAlignment = .left
        ticketBtn.setTitleColor(UIColor.yellow, for: .normal)
        ticketBtn.backgroundColor = UIColor.clear
        ticketBtn.layer.borderWidth = 1
        ticketBtn.layer.borderColor = UIColor.yellow.cgColor
        ticketBtn.layer.cornerRadius = 10
        ticketBtn.clipsToBounds = true
    }
    
    func setUpPhotosBtn() {
        photosBtn.setTitle("Photos", for: UIControl.State.normal)
        photosBtn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        photosBtn.contentHorizontalAlignment = .left
        photosBtn.setTitleColor(UIColor.yellow, for: .normal)
        photosBtn.backgroundColor = UIColor.clear
        photosBtn.layer.borderWidth = 1
        photosBtn.layer.borderColor = UIColor.yellow.cgColor
        photosBtn.layer.cornerRadius = 10
        photosBtn.clipsToBounds = true
    }

}
