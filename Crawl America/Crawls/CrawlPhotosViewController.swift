//
//  CrawlPhotosViewController.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/15/23.
//

import UIKit

class CrawlPhotosViewController: UIViewController {
    
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var titleTextLbl: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func setupUI() {
        setUpBackground()
        setUpCloseBtn()
        setUpTitleTextLbl()
    }
    
    @IBAction func closeBtnDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}

extension CrawlPhotosViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Cell Tapped")
    }
}

extension CrawlPhotosViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CrawlPhotosCell", for: indexPath)
        
        return cell
    }
}


extension CrawlPhotosViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 180)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
         return 20
     }
     
     // Cell Margin
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
         return UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
     }
}
