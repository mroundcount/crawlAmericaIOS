//
//  NameTagViewController.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/26/23.
//

import UIKit

class NameTagViewController: UIViewController {
    
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var nameTagLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        forceOrientation()
    }
    
    func setupUI() {
        setUpBackground()
        setUpCloseBtn()
        setUpNameTagLbl()
    }
    
    @IBAction func closeBtnDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    func forceOrientation() {
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
}
