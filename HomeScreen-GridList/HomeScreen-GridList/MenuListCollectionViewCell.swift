//
//  MenuListCollectionViewCell.swift
//  HomeScreen-GridList
//
//  Created by EOO61 on 07/09/21.
//

import UIKit

class MenuListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var cellTitleLabel: UILabel!
    @IBOutlet weak var cellBGView: UIView!
    @IBOutlet weak var countLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellBGView.layer.cornerRadius = 5.0
        //cellBGView.layer.addShadowDefault()
    }
}

extension CALayer {
    
    func addShadowDefault() {
        self.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.shadowOpacity = 0.25
        self.shadowRadius = 5
        self.shadowColor = UIColor.black.cgColor
        self.masksToBounds = false
    }
}
