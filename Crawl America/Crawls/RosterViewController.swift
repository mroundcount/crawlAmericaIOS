//
//  RosterViewController.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/15/23.
//

import UIKit

class RosterViewController: UIViewController{
    
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var titleTextLbl: UILabel!
    @IBOutlet weak var rosterTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
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

extension RosterViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RosterCell", for: indexPath) as! RosterCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Cell Clicked")
    }
}
