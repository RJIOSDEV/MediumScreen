//
//  CollectionViewCellS4C2.swift
//  MediumScreen
//
//  Created by rajanOS on 16/02/22.
//

import UIKit

class CollectionViewCellS4C2: UICollectionViewCell {

    static let identifier = "cell1"
        static func nib() -> UINib {
            UINib(nibName: "CollectionViewCellS4C2", bundle: nil)
        }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
