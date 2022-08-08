//
//  TableViewCell3.swift
//  MediumScreen
//
//  Created by rajanOS on 21/02/22.
//

import UIKit

class TableViewCell3: UITableViewCell {

    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var lbl2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        btn1.layer.cornerRadius = 10
        btn1.layer.borderWidth = 0.5
        btn1.layer.borderColor = UIColor.green.cgColor
        
        
        btn2.layer.cornerRadius = 10
        btn2.layer.borderWidth = 0.5
        btn2.layer.borderColor = UIColor.green.cgColor
        
        btn3.layer.cornerRadius = 10
        btn3.layer.borderWidth = 0.5
        btn3.layer.borderColor = UIColor.green.cgColor
        
        btn4.layer.cornerRadius = 10
        btn4.layer.borderWidth = 0.5
        btn4.layer.borderColor = UIColor.green.cgColor
        
        
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
