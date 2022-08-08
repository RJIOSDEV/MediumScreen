//
//  CollectionViewCellList.swift
//  MediumScreen
//
//  Created by rajanOS on 16/02/22.
//

import UIKit

class CollectionViewCellList: UICollectionViewCell {

    @IBOutlet weak var lblnm: UILabel!
    static let identifier = "cell"
        static func nib() -> UINib {
            UINib(nibName: "CollectionViewCellList", bundle: nil)
        }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
