//
//  PurchaseEventsViewController.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/26/23.
//

import UIKit

class PurchaseEventsViewController: UIViewController {
    
    @IBOutlet weak var titleTextLbl: UILabel!
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var purchaseEventsTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    func setupUI() {
        setUpBackground()
        setUpCloseBtn()
        setUpTitleTextLbl()
        setupTableView()
    }
    
    @IBAction func closeBtnDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}

extension PurchaseEventsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PurchaseEventsCell", for: indexPath) as! PurchaseEventsCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Cell Clicked")
    }
}
