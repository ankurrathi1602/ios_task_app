//
//  moreButtonViewController.swift
//  taskApp
//
//  Created by ankur rathi on 26/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class moreButtonViewController: UIViewController {

    
    @IBOutlet weak var moreButtonView: UICollectionView!
    
    let images: [UIImage] = [UIImage(named: "electricity")!,UIImage(named: "mobile-payment")!,UIImage(named: "phoneOne")!,UIImage(named: "train")!,UIImage(named: "icons8-home-30")!,UIImage(named: "electricity")!,UIImage(named: "mobile-payment")!,UIImage(named: "phoneOne")!,UIImage(named: "train")!,UIImage(named: "icons8-home-30")!]
        let label: [String] = ["Electricity", "Mobile", "Phone", "Train", "Home","Electricity", "Mobile", "Phone", "Train", "Home"]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            let nav = self.navigationController?.navigationBar
                          nav?.barStyle = .black
                          nav?.barTintColor = UIColor.init(red: 0/255, green: 25/255, blue: 75/255, alpha: 1)
                          nav?.tintColor = UIColor.white
                          nav?.isTranslucent = false
                          nav?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            //        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "menu"), style: .plain, target: self, action: #selector(handleMenuToggle))
            self.title = "Payments"
            // Do any additional setup after loading the view.
        }


    }
    extension moreButtonViewController: UICollectionViewDataSource, UICollectionViewDelegate {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return images.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PaymentBarCollectionViewCell
            cell.imageMore.image = images[indexPath.row]
            cell.labelMore.text = label[indexPath.row]
            
            return cell
            
        }
        
    }

    extension moreButtonViewController: UICollectionViewDelegateFlowLayout {
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            
            let collectionViewWidth = collectionView.bounds.width
            
            return CGSize(width: collectionViewWidth/3, height: collectionViewWidth/3)
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 5
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            
            return 4
        }
        
        
        
    }
