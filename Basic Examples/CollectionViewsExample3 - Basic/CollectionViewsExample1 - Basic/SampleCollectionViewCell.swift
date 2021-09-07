//
//  SampleCollectionViewCell.swift
//  CollectionViewsExample1 - Basic
//
//  Created by mallikarjun on 13/06/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//

import UIKit

class SampleCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var cellTitleLabel: UILabel!

    @IBOutlet weak var cellBGView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellBGView.layer.cornerRadius = 5.0
    }
    
}
