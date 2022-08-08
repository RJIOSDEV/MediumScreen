//
//  CollectionViewCell4.swift
//  MediumScreen
//
//  Created by rajanOS on 16/02/22.
//

import UIKit

class CollectionViewCell4: UICollectionViewCell {

    static let identifier = "gcell"
        static func nib() -> UINib {
            UINib(nibName: "CollectionViewCell4", bundle: nil)
        }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
