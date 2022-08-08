//
//  ViewControllerScreen5.swift
//  MediumScreen
//
//  Created by rajanOS on 19/02/22.
//

import UIKit

class ViewControllerScreen6 : UIViewController {
    @IBOutlet weak var tblview1: UITableView!
    
    
    
    let items1 = ["choose payment","numberof truck","cargo weight","cargo type","cargo value"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tblview1.rowHeight = UITableView.automaticDimension
            tblview1.estimatedRowHeight = UITableView.automaticDimension
        
        tblview1.delegate = self
        
        
        
        tblview1.dataSource = self
        
        tblview1.layer.borderWidth = 0.2
        
        tblview1.layer.cornerRadius = 10
        
        
       tblview1.register(UINib(nibName: "TableViewCell1", bundle: nil), forCellReuseIdentifier: "cell")
        tblview1.register(UINib(nibName: "TableViewCell2", bundle: nil), forCellReuseIdentifier: "cell1")
        tblview1.register(UINib(nibName: "TableViewCell3", bundle: nil), forCellReuseIdentifier: "cell2")
        tblview1.register(UINib(nibName: "TableViewCell4", bundle: nil), forCellReuseIdentifier: "cell3")
        tblview1.register(UINib(nibName: "TableViewCell5", bundle: nil), forCellReuseIdentifier: "cell4")
        
  //      tblscreen5.reloadData()
        
    //    tblview1.reloadData()

        // Do any additional setup after loading the view.
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
extension ViewControllerScreen6 : UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        switch indexPath.row {
//
//        case 0: return 120
//        case 1: return 30
//        case 2: return 90
//        case 3: return 50
//        case 4: return 100
//
//
//        default:
//            return 40
////        }
//        if tableView == tblview1 {
//            return 100
//
//        }else{
//
//        }

        return UITableView.automaticDimension
       // return 200
    }
    
    private func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
       
        
        switch section.self {

        case 0: return 0
        case 1: return 0
        case 2: return 0
        case 3: return 0
        case 4: return 0


        default:
            return 40
        }

        
    }
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "items1"
//
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if tableView == tableView {
//        let cell = tblview1.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell1
//      //  cell.lbl4.text = items1[indexPath.row]
//        return cell
//        }else{
//            let cell = tblview1.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TableViewCell3
//
//            return cell
//
//        }
//
 //   }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           switch indexPath.section {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell1
//                cell.label.text = tableData[indexPath.section].Cells[indexPath.row] as String
//                if indexPath.row == ostype {
//                    cell.accessoryType = .checkmark
//                }else{
//                    cell.accessoryType = .none
//                }
            return cell

            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TableViewCell2
//                cell.label.text = tableData[indexPath.section].Cells[indexPath.row] as String
//                cell.btnSwitch.tag = 1000*(1+indexPath.section)+indexPath.row
//                cell.btnSwitch.addTarget(self, action: #selector(switched), for: .valueChanged);
//                if  indexPath.section == 1 {
//                     if switchBtnstatus[indexPath.row] == 1
//                     {
//                        cell.btnSwitch.setOn(true, animated: true)
//                     }else {
//                        cell.btnSwitch.setOn(false, animated: true)
//                    }
//                }
            return cell
               
               
           case 2:
               let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! TableViewCell3
//                cell.label.text = tableData[indexPath.section].Cells[indexPath.row] as String
//                cell.btnSwitch.tag = 1000*(1+indexPath.section)+indexPath.row
//                cell.btnSwitch.addTarget(self, action: #selector(switched), for: .valueChanged);
//                if  indexPath.section == 1 {
//                     if switchBtnstatus[indexPath.row] == 1
//                     {
//                        cell.btnSwitch.setOn(true, animated: true)
//                     }else {
//                        cell.btnSwitch.setOn(false, animated: true)
//                    }
//                }
           return cell
               

            case 3:
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! TableViewCell4
//                cell.label.text = tableData[indexPath.section].Cells[indexPath.row] as String
//                cell.editField.tag = indexPath.row
//                cell.editField.addTarget(self, action: #selector(Edited(sender:)), for: .editingChanged)
            return cell
               
//
//           case 4:
//               let cell = tableView.dequeueReusableCell(withIdentifier: "cell4", for: indexPath) as! TableViewCell5
////                cell.label.text = tableData[indexPath.section].Cells[indexPath.row] as String
////                cell.editField.tag = indexPath.row
////                cell.editField.addTarget(self, action: #selector(Edited(sender:)), for: .editingChanged)
//           return cell

            default:
                break
            }
    //make sure below line never executes :-)
            return tableView.dequeueReusableCell(withIdentifier: "cell4", for: indexPath)
        }
    
}
