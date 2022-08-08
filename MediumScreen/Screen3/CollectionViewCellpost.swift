//
//  CollectionViewCellpost.swift
//  MediumScreen
//
//  Created by rajanOS on 16/02/22.
//

import UIKit

class CollectionViewCellpost: UICollectionViewCell {

    @IBOutlet weak var my: UIView!
    @IBOutlet weak var gghgj: UILabel!
    @IBOutlet weak var trhtr: UILabel!
    @IBOutlet weak var ersyyry: UIImageView!
    static let identifier = "cell2"
        static func nib() -> UINib {
            UINib(nibName: "CollectionViewCellpost", bundle: nil)
        }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func bringSubviewToFront(_ view: UIView) {
        super.bringSubviewToFront(view)
        let lineView = UIView.self(frame: CGRect(x: 50, y: 50, width: 100, height: 5))
        lineView.layer.borderWidth = 1.0
        lineView.layer.borderColor = UIColor.black.cgColor
       // self.view.addSubview(lineView)
        self.bringSubviewToFront(lineView)
    }

    
}
