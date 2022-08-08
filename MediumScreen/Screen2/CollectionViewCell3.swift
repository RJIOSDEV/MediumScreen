//
//  CollectionViewCell3.swift
//  MediumScreen
//
//  Created by rajanOS on 16/02/22.
//

import UIKit

class CollectionViewCell3: UICollectionViewCell {
   
    
    static let identifier = "cellm"
        static func nib() -> UINib {
            UINib(nibName: "CollectionViewCell3", bundle: nil)
        }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
