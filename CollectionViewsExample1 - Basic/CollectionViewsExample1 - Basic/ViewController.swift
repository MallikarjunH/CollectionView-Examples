//
//  ViewController.swift
//  CollectionViewsExample1 - Basic
//
//  Created by mallikarjun on 13/06/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    

    let itemsArray = ["Cell 1", "Cell 2","Cell 3","Cell 4","Cell 5","Cell 6","Cell 7","Cell 8","Cell 8","Cell 10","Cell 11","Cell 12"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return itemsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SampleCollectionViewCell
        
        cell.sampleLabel.text = itemsArray[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print(indexPath.item)
    }


}

