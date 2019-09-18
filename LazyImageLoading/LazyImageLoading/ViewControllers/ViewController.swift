//
//  ViewController.swift
//  LazyImageLoading
//
//  Created by mallikarjun on 18/09/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var mainCollectionView: UICollectionView!
  
    var imageURL = ["https://miro.medium.com/max/2400/1*SQiQIaszE0fXB7cGYy6bmA.jpeg", "https://miro.medium.com/max/2400/1*r9lXFx3HIYUOEz6DdfnN_g.jpeg",
        "https://miro.medium.com/max/5472/1*yAQxTFJwEKXnAr2JrOFs7w.jpeg",
        "https://miro.medium.com/max/2000/1*1uO2NznNGici7cGqgL-FoA.jpeg",
        "https://miro.medium.com/max/2474/1*qP-v3mvvwl9jACynUFN1Sg.png",
        "https://cdn-images-1.medium.com/fit/t/800/240/1*VqIN9aBomw8Xhjiu2G8Aaw.jpeg",
        "https://miro.medium.com/max/1920/1*h58eRcgYpAFec_QbmJcRpg.jpeg",
        "https://miro.medium.com/max/4288/1*AhmMBxygUBgHiz4bNI_DeA.jpeg",
        "https://miro.medium.com/max/3820/1*GlmHP6nltxqLBZA3Rv8AGg.jpeg",
        "https://miro.medium.com/max/2048/1*YlJ_pJRK9E2Bg0BMbGZKmQ.jpeg",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    //MARK: Collection view data source methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return imageURL.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCellId", for: indexPath) as! ImageCollectionViewCell
        
        return cell
    }
    
    // MARKK: Collection view delegate methods

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
        
    }
}

