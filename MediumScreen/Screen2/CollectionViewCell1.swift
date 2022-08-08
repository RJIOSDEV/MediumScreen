//
//  CollectionViewCell1.swift
//  MediumScreen
//
//  Created by rajanOS on 16/02/22.
//

import UIKit

class CollectionViewCell1: UICollectionViewCell {

    @IBOutlet weak var btnh: UIButton!
    static let identifier = "cell"
        static func nib() -> UINib {
            UINib(nibName: "CollectionViewCell1", bundle: nil)
        }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        
        btnh.layer.cornerRadius = 25
        
    }

}
