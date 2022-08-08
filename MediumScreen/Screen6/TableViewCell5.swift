//
//  TableViewCell5.swift
//  MediumScreen
//
//  Created by rajanOS on 21/02/22.
//

import UIKit

class TableViewCell5: UITableViewCell {

    @IBOutlet weak var btn14: UIButton!
    @IBOutlet weak var btn13: UIButton!
    @IBOutlet weak var btn12: UIButton!
    @IBOutlet weak var btn11: UIButton!
    @IBOutlet weak var lbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        btn11.layer.cornerRadius = 10
        btn11.layer.borderWidth = 0.5
        btn11.layer.borderColor = UIColor.green.cgColor
        
        
        btn12.layer.cornerRadius = 10
        btn12.layer.borderWidth = 0.5
        btn12.layer.borderColor = UIColor.green.cgColor
    
        btn13.layer.cornerRadius = 10
        btn13.layer.borderWidth = 0.5
        btn13.layer.borderColor = UIColor.green.cgColor
        
        btn14.layer.cornerRadius = 10
        btn14.layer.borderWidth = 0.5
        btn14.layer.borderColor = UIColor.green.cgColor
        
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
