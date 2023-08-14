//
//  TicketViewController.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/26/23.
//

import UIKit

class TicketViewController: UIViewController {
    
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var profileAvatarImg: UIImageView!
    @IBOutlet weak var barLbl: UILabel!
    @IBOutlet weak var crawlLbl: UILabel!
    @IBOutlet weak var specialsLbl: UILabel!
    @IBOutlet weak var backgroundImg: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        forceOrientation()
    }
    
    func setupUI() {
        setUpBackground()
        setUpBackgroundImg()
        setUpCloseBtn()
        setUpNameLbl()
        setUpProfileAvatarImg()
        setUpBarLbl()
        setUpCrawlLbl()
        setUpSpecialsLbl()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    func forceOrientation() {
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    @IBAction func closeBtnDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
