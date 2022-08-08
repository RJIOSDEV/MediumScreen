//
//  ViewController7.swift
//  MediumScreen
//
//  Created by rajanOS on 21/02/22.
//

import UIKit

class ViewController7: UIViewController {

    @IBOutlet weak var lbl4: UIButton!
    @IBOutlet weak var lbl3: UIButton!
    @IBOutlet weak var lbl2: UIButton!
    @IBOutlet weak var lbl1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl2.layer.borderWidth = 0.5
        lbl2.layer.borderColor = UIColor.green.cgColor
        lbl2.layer.cornerRadius = 10
        
        
        lbl4.layer.borderWidth = 0.5
        lbl4.layer.borderColor = UIColor.green.cgColor
        lbl4.layer.cornerRadius = 10
        
        lbl3.layer.borderWidth = 0.5
        lbl3.layer.borderColor = UIColor.green.cgColor
        lbl3.layer.cornerRadius = 10
        
        lbl1.layer.borderWidth = 0.5
        lbl1.layer.borderColor = UIColor.green.cgColor
        lbl1.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
        
        let lineView = UIView(frame: CGRect(x: 320
                                            
                                            , y: 630, width: 320, height: 1.0))
        lineView.layer.borderWidth = 1.0
        lineView.layer.borderColor = UIColor.gray.cgColor
        self.view.addSubview(lineView)
        
        let lineView1 = UIView(frame: CGRect(x: 0
                                            
                                            , y: 730, width: 500, height: 1.0))
        lineView1.layer.borderWidth = 1.0
        lineView1.layer.borderColor = UIColor.gray.cgColor
        self.view.addSubview(lineView1)
        
        let lineView2 = UIView(frame: CGRect(x: 0
                                             
                                            
                                            , y: 690, width: 500, height: 1.0))
        lineView2.layer.borderWidth = 1.0
        lineView2.layer.borderColor = UIColor.gray.cgColor
        self.view.addSubview(lineView2)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
