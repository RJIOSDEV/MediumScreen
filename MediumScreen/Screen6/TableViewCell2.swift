//
//  TableViewCell2.swift
//  MediumScreen
//
//  Created by rajanOS on 21/02/22.
//

import UIKit

class TableViewCell2: UITableViewCell {
    @IBOutlet weak var lbl3: UILabel!
    
    @IBOutlet weak var stackview: UIStackView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        stackview.layer.cornerRadius = 10
        stackview.layer.borderWidth = 0.5
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
