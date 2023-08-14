//
//  ScheduleViewController.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/15/23.
//

import UIKit
import LNPopupController

class ScheduleViewController: UIViewController{
    
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var titleTextLbl: UILabel!
    @IBOutlet weak var scheduleTableView: UITableView!
    
    var popupContentController: BarProfileViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        setUpBackground()
        setUpCloseBtn()
        setUpTitleTextLbl()
        setupTableView()
        
        popupContentController = storyboard?.instantiateViewController(withIdentifier: "BarProfileViewController") as? BarProfileViewController
    }
    
    @IBAction func closeBtnDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}

extension ScheduleViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ScheduleCell", for: indexPath) as! ScheduleCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Cell Clicked")
        popupContentController.barInfo = "The Naughty Rabbi"
        popupContentController.timeRemaining = "30 minutes remaining"
        popupContentController.barImage = UIImage(named: "bar1")!
        
        popupContentController.popupItem.accessibilityHint = NSLocalizedString("Double Tap to Expand the Mini Player", comment: "")
        tabBarController?.popupContentView.popupCloseButton.accessibilityLabel = NSLocalizedString("Dismiss Now Playing Screen", comment: "")
        
        #if targetEnvironment(macCatalyst)
        tabBarController?.popupBar.inheritsVisualStyleFromDockingView = true
        #endif
        
        tabBarController?.presentPopupBar(withContentViewController: popupContentController, animated: true, completion: nil)

        tabBarController?.popupBar.backgroundColor = UIColor.black
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
