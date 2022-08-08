//
//  MediumScreen3.swift
//  MediumScreen
//
//  Created by rajanOS on 16/02/22.
//

import UIKit

class MediumScreen3: UIViewController {
    @IBOutlet weak var listCollection: UICollectionView!
    
    @IBOutlet weak var postcollection: UICollectionView!
    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var camerabtn: UIButton!
    @IBOutlet weak var allbtn: UIButton!
    @IBOutlet weak var publicbtn: UIButton!
    let items1 = ["Daily news","twitter","dfgdgd","fdgdgdf","dfgdfgdf","dgdfgteg","wrwer"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        listCollection.delegate = self
        listCollection.dataSource = self

        postcollection.delegate = self
        postcollection.dataSource = self
        
        
        
        listCollection.register(CollectionViewCellList.nib(), forCellWithReuseIdentifier:
                                        CollectionViewCellList.identifier)
        postcollection.register(CollectionViewCellpost.nib(), forCellWithReuseIdentifier: CollectionViewCellpost.identifier)

        text.layer.borderWidth = 0.5
        text.layer.borderColor = UIColor.lightGray.cgColor
        camerabtn.layer.borderWidth = 0.5
        
        camerabtn.layer.borderColor = UIColor.lightGray.cgColor
        
        allbtn.layer.borderWidth = 0.5
        
        allbtn.layer.borderColor = UIColor.lightGray.cgColor
        publicbtn.layer.borderWidth = 0.5
        publicbtn.layer.borderColor = UIColor.lightGray.cgColor
        
        listCollection.layer.borderWidth = 0.5
        listCollection.layer.borderColor = UIColor.lightGray.cgColor
        
        
        // Do any additional setup after loading the view.
    }
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        
//        let lineView = UIView(frame: CGRect(x: 0, y: 200, width: 390, height: 1.0))
//        lineView.layer.borderWidth = 1.0
//        lineView.layer.borderColor = UIColor.black.cgColor
//        self.view.addSubview(lineView)
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension MediumScreen3 :  UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        if collectionView == listCollection {
    
            return CGSize(width:listCollection.frame.width/4, height: 25)
        } else
        {
            return CGSize(width: postcollection.frame.width/1, height: 350)
        }
    

    
    }
    
    
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == listCollection {
            return items1.count
        }else{
            return 1
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == listCollection {
            let cell = listCollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellList
            cell.lblnm.text = items1[indexPath.row]
//cell.layer.borderWidth = 0.5
            return cell
            
            
        }
        else{
            let cell2 = postcollection.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCellpost
            cell2.layer.borderWidth = 0.5
            cell2.layer.borderColor = UIColor.lightGray.cgColor
            
            
            return cell2
       
        }
    }
    
    
    
}
