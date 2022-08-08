//
//  CollectionViewCellS4C1.swift
//  MediumScreen
//
//  Created by rajanOS on 16/02/22.
//

import UIKit

class CollectionViewCellS4C1: UICollectionViewCell {
    @IBOutlet weak var lbllbl1: UILabel!
    
    static let identifier = "cell"
        static func nib() -> UINib {
            UINib(nibName: "CollectionViewCellS4C1", bundle: nil)
        }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        
        
    }

}
