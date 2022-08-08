//
//  ViewControllerScreen3.swift
//  MediumScreen
//
//  Created by rajanOS on 16/02/22.
//

import UIKit

class ViewControllerScreen3: UIViewController {
    @IBOutlet weak var btnbar: UIButton!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var NEWBARVIEW: UIView!
    @IBOutlet weak var textfld: UITextField!
    @IBOutlet weak var addbtn: UIButton!
    @IBOutlet weak var onecollection: UICollectionView!
    
    @IBOutlet weak var twocollection: UICollectionView!
    @IBOutlet weak var threecollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
       // setGradientBackground()
        

//self.btnbar.applyGradient(colours: [.gray, .blue])
     //   logo.layer.backgroundColor = UIColor.gray.cgColor
       // self.logo.applyGradient(colours: [.white, .green])
        self.NEWBARVIEW.applyGradient(colours: [.systemBlue, .secondarySystemFill], locations: [0.5
                                                                                                , 1,1,1])

        onecollection.delegate = self
        onecollection.dataSource = self
        
        twocollection.delegate = self
        twocollection.dataSource = self
        
        threecollection.delegate = self
        threecollection.dataSource = self
        
        
    
        
        onecollection.register(CollectionViewCellS4C1.nib(), forCellWithReuseIdentifier:
                                CollectionViewCellS4C1.identifier)
        
        twocollection.register(CollectionViewCellS4C2.nib(), forCellWithReuseIdentifier:
                                CollectionViewCellS4C2.identifier)
        
        threecollection.register(CollectionViewCellS4C3.nib(), forCellWithReuseIdentifier:
                                    CollectionViewCellS4C3.identifier)
        
        
        
        

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
   //     setGradientBackground()
        super.viewWillAppear(animated)
      //  logo.layer.backgroundColor = UIColor.gray.cgColor
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
     /* for gradient coulour
    
    func setGradientBackground() {
        let colorTop =  UIColor(red: 150/255.0, green: 255/255.0, blue: 100/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 0/255.0, green: 100/255.0, blue: 255/255.0, alpha: 1).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
      
        gradientLayer.startPoint = CGPoint(x: 1, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        gradientLayer.frame = self.NEWBARVIEW.bounds
                
        self.NEWBARVIEW.layer.insertSublayer(gradientLayer, at: 2)
    }
    
*/
}
extension ViewControllerScreen3: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
  
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        if collectionView == onecollection {
    
            return CGSize(width:onecollection.frame.width/5, height: 140)
        } else
        {
            if collectionView == twocollection {
                return CGSize(width: twocollection.frame.width/1.10, height: 180)
      
            }else{
               // if collectionView == threecollection {
                return CGSize(width: threecollection.frame.width/1.1, height: 220
                    )
                    
              //  }else{
                 //   return CGSize(width: fourCollection.frame.width/1.1, height: 200)
                }
            }
            }
    

    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == onecollection {
            return 5
        }else{
            if collectionView == twocollection{
                return 5
            }else{
                return 5
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == onecollection {
            let cell = onecollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellS4C1
            return cell
        }else{
            if collectionView == twocollection {
                let cell1 = twocollection.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionViewCellS4C2
                
                return cell1
            }else{
                let cell2 = threecollection.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCellS4C3
                
                return cell2
            }
        }
    }
    
  
    
    
}
extension UIView {

    func applyGradient(colours: [UIColor]) -> CAGradientLayer {
        return self.applyGradient(colours: colours, locations: nil)
    }


    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> CAGradientLayer {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = locations
        self.layer.insertSublayer(gradient, at: 0)
        return gradient
    }
    
    

}


        
 
