//
//  TableViewCell1.swift
//  MediumScreen
//
//  Created by rajanOS on 21/02/22.
//

import UIKit

class TableViewCell1: UITableViewCell {

    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var lbl4: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        img1.layer.borderWidth = 0.5
        img1.layer.borderColor = UIColor.green.cgColor
        img1.layer.cornerRadius = 20
        
        img2.layer.borderWidth = 0.5
        img2.layer.borderColor = UIColor.green.cgColor
        img2.layer.cornerRadius = 20
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
