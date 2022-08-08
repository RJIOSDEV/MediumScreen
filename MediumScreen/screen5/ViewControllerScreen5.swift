//
//  ViewControllerScreen5.swift
//  MediumScreen
//
//  Created by rajanOS on 18/02/22.
//

import UIKit

class ViewControllerScreen5: UIViewController {
    @IBOutlet weak var tblscreen5: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblscreen5.dataSource = self
        tblscreen5.delegate = self
        tblscreen5.register(UINib(nibName: "Screen5TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        
        tblscreen5.reloadData()
        
    //    tblscreen5.register(Screen5TableViewCell.nib(), forCellWithReuseIdentifier:
                            //    Screen5TableViewCell.identifier)
        
     

        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    
            tblscreen5.frame = tblscreen5.frame.inset(by: UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2
                                                                    ))
        
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
extension ViewControllerScreen5: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblscreen5.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Screen5TableViewCell
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
//
//    }
//    func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int {
//        return 20
//
//    }
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 20
//
//    }
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        10
//    }
}
