//
//  ViewController.swift
//  MediumScreen
//
//  Created by rajanOS on 16/02/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var donebtn: UIButton!
    @IBOutlet weak var lblb: UILabel!
    @IBOutlet weak var twocollection: UICollectionView!
    @IBOutlet weak var fourCollection: UICollectionView!
    @IBOutlet weak var threeCollection: UICollectionView!
    
    @IBOutlet weak var onecollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fourCollection.delegate = self
        fourCollection.dataSource = self
        
        onecollection.delegate = self
        onecollection.dataSource = self
        twocollection.delegate = self
        twocollection.dataSource = self
        threeCollection.delegate = self
        threeCollection.dataSource = self
        onecollection.register(CollectionViewCell1.nib(), forCellWithReuseIdentifier:
                                CollectionViewCell1.identifier)
        
        twocollection.register(CollectionViewCell2.nib(), forCellWithReuseIdentifier:
                                CollectionViewCell2.identifier)
        
        threeCollection.register(CollectionViewCell3.nib(), forCellWithReuseIdentifier:
                                CollectionViewCell3.identifier)
        
        fourCollection.register(CollectionViewCell4.nib(), forCellWithReuseIdentifier:
                                CollectionViewCell4.identifier)
        
        
        donebtn.layer.borderWidth = 0.01
        
        
        // Do any additional setup after loading the view.
    }


}
extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        if collectionView == onecollection {
    
            return CGSize(width:onecollection.frame.width/1.1, height: 120)
        } else
        {
            if collectionView == twocollection {
                return CGSize(width: twocollection.frame.width/1.1, height: 128)
      
            }else{
                if collectionView == threeCollection {
                    return CGSize(width: threeCollection.frame.width/1.1, height: 158)
                    
                }else{
                    return CGSize(width: fourCollection.frame.width/1.1, height: 200)
                }
            }
            }
    

    
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        if collectionView == onecollection {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }else{
            if collectionView == twocollection {
         return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
            }else{
                if collectionView == threeCollection {
                    return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
                }else{
                    return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
                }
            }
        }
        }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == onecollection {
        return 0
        }else{
            if collectionView == twocollection {
                
            
         return 0
            } else{
                if collectionView == threeCollection {
                    return 0
                }else{
                    return 0
                }
            
            
        }
        }
        }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == onecollection {
        return 0
        }else{
            if collectionView == twocollection{
                return 0
            }else{
                if collectionView == threeCollection{
                    return 0                }
                else{
            
         return 0
                }}
        }
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == onecollection {
            return 1
        }else{
            if collectionView == twocollection {
                
                return 1
            }else{
                
                if collectionView == threeCollection {
            return 1
                } else {
                    return 1
                }
            }
            }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == onecollection {
            let cell = onecollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell1
           // onecollection.register(UICollectionView.self, forCellWithReuseIdentifier: "tcell")
            cell.layer.borderWidth = 2
            cell.layer.cornerRadius = 4
            return cell
        }
        else{
            
            
            if collectionView == twocollection {
            
            let bcell = twocollection.dequeueReusableCell(withReuseIdentifier: "bcell", for: indexPath) as! CollectionViewCell2
          //  twocollection.register(UICollectionView.self, forCellWithReuseIdentifier: "bcell")
                bcell.layer.borderWidth = 2
                bcell.layer.cornerRadius = 4
            return bcell
            } else{
                if collectionView == threeCollection {
                
                let cellm = threeCollection.dequeueReusableCell(withReuseIdentifier: "cellm", for: indexPath) as! CollectionViewCell3
                
             cellm.layer.borderWidth = 2
                    cellm.layer.cornerRadius = 4
                
                return cellm
                }else {
                    let gcell = fourCollection.dequeueReusableCell(withReuseIdentifier: "gcell", for: indexPath) as! CollectionViewCell4
                    
                   gcell.layer.borderWidth = 2
                    gcell.layer.cornerRadius = 4
                    
                    return gcell
                    
                }
            }
            }
    }
    
    
}
