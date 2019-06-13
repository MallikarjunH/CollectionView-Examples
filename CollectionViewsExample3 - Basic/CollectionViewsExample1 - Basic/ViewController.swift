//
//  ViewController.swift
//  CollectionViewsExample1 - Basic
//
//  Created by mallikarjun on 13/06/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    

    let itemsArray = ["Body Fat Calculator", "Activity Tracket","Calorie Counter","Height Predictor","Health Logs","Baby Bump Tracker","Symptom Checker","Pull Reminder","Menstruation Calender"]
    let imageArray = ["bmi_calculator","activity_tracker","calorie_calculator","baby_height_predictor","health_log","babay_bump_predictor","symptom_checker","pill_reminder", "pms_calculator"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return itemsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SampleCollectionViewCell
        
        cell.cellTitleLabel.text = itemsArray[indexPath.item]
        cell.imageOutlet.image = UIImage(named: imageArray[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print(indexPath.item)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        var cellSize: CGSize
        
            let screenRect = UIScreen.main.bounds
            let screenWidth = screenRect.size.width - 30
            
            cellSize = CGSize(width: screenWidth / 2.0, height: 180)
    
        return cellSize
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }


}

