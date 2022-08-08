//
//  Screen5TableViewCell.swift
//  MediumScreen
//
//  Created by rajanOS on 18/02/22.
//

import UIKit

class Screen5TableViewCell: UITableViewCell {

    @IBOutlet weak var lbl: UILabel!
    
    static let identifier = "cell"
        static func nib() -> UINib {
            UINib(nibName: "Screen5TableViewCell", bundle: nil)
        }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
