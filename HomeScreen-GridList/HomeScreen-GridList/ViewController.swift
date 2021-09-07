//
//  ViewController.swift
//  HomeScreen-GridList
//
//  Created by EOO61 on 07/09/21.
//

import UIKit

class ViewController: UIViewController {

    let itemsArray = ["My Signature", "Waiting For Others","Recalled","Declined","Completed", "Rejected"]
    let itemsCountArray = ["16", "213","32","8","107", "648"]
    let imageArray = ["mySignatureICN","waitingForOthersICN","recalledICN","declineICN","completedICN","rejectedICN"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension ViewController: UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return itemsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuListCollectionViewCell", for: indexPath) as! MenuListCollectionViewCell
        
        cell.cellTitleLabel.text = itemsArray[indexPath.item]
        cell.imageOutlet.image = UIImage(named: imageArray[indexPath.row])
        cell.countLabel.text = itemsCountArray[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print(indexPath.item)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        var cellSize: CGSize
        
        let screenRect = UIScreen.main.bounds
        let screenWidth = screenRect.size.width - 60 // 50 - Pergect //30
        
        cellSize = CGSize(width: screenWidth / 3.0, height: 125)
        
        return cellSize
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
}
