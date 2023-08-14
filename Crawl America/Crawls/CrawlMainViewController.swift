//
//  CrawlsMainViewController.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/14/23.
//

import UIKit
import Foundation

class CrawlMainViewController: UIViewController {
    
    @IBOutlet weak var titleTextLbl: UILabel!
    @IBOutlet weak var myCrawlsTableView: UITableView!
    
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
        setUpTitleTextLbl()
        setupTableView()
    }
}


extension CrawlMainViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CrawlMainCell", for: indexPath) as! CrawlMainCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Cell Clicked")
        // For Testing Purposes
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let crawlOptions = storyboard.instantiateViewController(withIdentifier: IDENTIFIER_CRAWL_OPTIONS) as! CrawlOptionsViewController
        self.navigationController?.pushViewController(crawlOptions, animated: true)
    }
}
