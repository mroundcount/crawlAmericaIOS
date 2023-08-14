//
//  CrawlOptionsViewController.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/15/23.
//

import Foundation
import UIKit

class CrawlOptionsViewController: UIViewController {
    
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var titleTextLbl: UILabel!
    @IBOutlet weak var scheduleBtn: UIButton!
    @IBOutlet weak var rosterBtn: UIButton!
    @IBOutlet weak var nameTagBtn: UIButton!
    @IBOutlet weak var ticketBtn: UIButton!
    @IBOutlet weak var photosBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() {
        setUpBackground()
        setUpCloseBtn()
        setUpTitleTextLbl()
        setUpScheduleBtn()
        setUpRosterBtn()
        setUpNameTagBtn()
        setUpTicketBtn()
        setUpPhotosBtn()
    }
    

    
    @IBAction func closeBtnDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func scheduleBtnDidTap(_ sender: Any) {
        print("Schedule Did Tap")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let schedule = storyboard.instantiateViewController(withIdentifier: IDENTIFIER_SCHEDULE) as! ScheduleViewController
        self.navigationController?.pushViewController(schedule, animated: true)
    }
    
    @IBAction func rosterBtnDidTap(_ sender: Any) {
        print("Roster Did Tap")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let roster = storyboard.instantiateViewController(withIdentifier: IDENTIFIER_ROSTER) as! RosterViewController
        self.navigationController?.pushViewController(roster, animated: true)
    }
    
    @IBAction func nameTagBtnDidTap(_ sender: Any) {
        print("Name Tag Did Tap")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nameTag = storyboard.instantiateViewController(withIdentifier: IDENTIFIER_NAME_TAG) as! NameTagViewController
        self.navigationController?.pushViewController(nameTag, animated: true)
    }
    
    @IBAction func ticketBtnDidTap(_ sender: Any) {
        print("Ticket Did Tap")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let ticket = storyboard.instantiateViewController(withIdentifier: IDENTIFIER_TICKET) as! TicketViewController
        self.navigationController?.pushViewController(ticket, animated: true)
        
    }
    
    @IBAction func photosBtnDidTap(_ sender: Any) {
        print("Photos Did Tap")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let roster = storyboard.instantiateViewController(withIdentifier: IDENTIFIER_CRAWL_PHOTOS) as! CrawlPhotosViewController
        self.navigationController?.pushViewController(roster, animated: true)
    }
}

