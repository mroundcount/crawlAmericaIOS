//
//  ProfileViewController.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/17/23.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var previewView: UIView!
    @IBOutlet weak var profileAvatarImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var AgeLbl: UILabel!
    @IBOutlet weak var hometownLbl: UILabel!
    
    
    @IBOutlet weak var optionsView: UIView!
    @IBOutlet weak var purchaseBtn: UIButton!
    @IBOutlet weak var purchaseLbl: UILabel!
    @IBOutlet weak var optionsBtn: UIButton!
    @IBOutlet weak var optionsLbl: UILabel!
    @IBOutlet weak var nameTagBtn: UIButton!
    @IBOutlet weak var nameTagLbl: UILabel!
    @IBOutlet weak var photosBtn: UIButton!
    @IBOutlet weak var photosLbl: UILabel!
    @IBOutlet weak var myCrawlsBtn: UIButton!
    @IBOutlet weak var myCrawlsLbl: UILabel!
    
    
    @IBOutlet weak var profileTableView: UITableView!
    
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
        
        setUpPreviewView()
        setUpProfileAvatarImg()
        setUpNameLbl()
        setUpAgeLbl()
        setUpHometownLbl()
        
        setUpOptionsView()
        setUpPurchaseBtn()
        setUpPurchaseLbl()
        setUpOptionsBtn()
        setUpOptionsLbl()
        setUpNameTagBtn()
        setUpNameTagLbl()
        setUpPhotosBtn()
        setUpPhotosLbl()
        setUpMyCrawlsBtn()
        setUpMyCrawlsLbl()
        
        setupTableView()
        
        //Temporary hiding until we finalize design
        nameTagBtn.isHidden = true
        nameTagLbl.isHidden = true
        photosBtn.isHidden = true
        photosLbl.isHidden = true
        myCrawlsBtn.isHidden = true
        myCrawlsLbl.isHidden = true
    }
    
    @IBAction func purchaseBtnDidTap(_ sender: Any) {
        print("Purchase Button Tapped")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let purchaseCities = storyboard.instantiateViewController(withIdentifier: IDENTIFIER_PURCHASE_CITIES) as! PurchaseCitiesViewController
        self.navigationController?.pushViewController(purchaseCities, animated: true)
    }
    
    @IBAction func optionsBtnDidTap(_ sender: Any) {
        print("Options Button Tapped")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let profileOptions = storyboard.instantiateViewController(withIdentifier: IDENTIFIER_PROFILE_OPTIONS) as! ProfileOptionsTableViewController
        self.navigationController?.pushViewController(profileOptions, animated: true)
    }
    
    @IBAction func nameTagBtnDidTap(_ sender: Any) {
        print("Name Tag Button Tapped")
    }
    
    @IBAction func photosBtnDidTap(_ sender: Any) {
        print("Photos Button Tapped")
    }
    
    @IBAction func myCrawlsBtnDidTap(_ sender: Any) {
        print("My Crawls Button Tapped")
    }
    
    
}
