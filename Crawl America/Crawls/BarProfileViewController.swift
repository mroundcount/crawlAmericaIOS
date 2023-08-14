//
//  BarProfileViewController.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/29/23.
//

import UIKit
import LNPopupController

class BarProfileViewController: UIViewController {
    
    @IBOutlet weak var barAvatarImg: UIImageView!
    @IBOutlet weak var barInfoLbl: UILabel!
    @IBOutlet weak var barSpecialsLbl: UILabel!
    @IBOutlet weak var barAddressLbl: UILabel!
    @IBOutlet weak var timeRemainingLbl: UILabel!
    
    var closeBtn : UIBarButtonItem!
    var barInfo: String = ""

    
    var timeRemaining: String = "" {
        didSet {
            if isViewLoaded {
                timeRemainingLbl.text = timeRemaining
            }
            popupItem.subtitle = timeRemaining
        }
    }
    
    var barImage: UIImage = UIImage() {
        didSet {
            if isViewLoaded {
                barAvatarImg.image = barImage
            }
            popupItem.image = barImage
            popupItem.accessibilityImageLabel = NSLocalizedString("Album Art", comment: "")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        barAvatarImg.image = barImage
        timeRemainingLbl.text = timeRemaining
        
        popupBar.progressViewStyle = LNPopupBarProgressViewStyle.bottom
        
        LNPopupBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.yellow]
        LNPopupBar.appearance().subtitleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.yellow]
        
        closeBtn = UIBarButtonItem(image: UIImage(named: "close-1"), style: .plain, target: self, action: #selector(closeAction))
        closeBtn.tintColor = UIColor.yellow
        
        popupItem.rightBarButtonItems = [closeBtn]
        self.popupBar.progressViewStyle = LNPopupBarProgressViewStyle.bottom
        
        setUpUI()
    }
    
    @objc func closeAction() {
        popupPresentationContainer?.dismissPopupBar(animated: true, completion: nil)
    }

    

}
