//
//  PaymentBarViewController.swift
//  taskApp
//
//  Created by ankur rathi on 25/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class PaymentBarViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    @IBOutlet weak var paymenyBarView: UICollectionView!
    
    
    
    let images: [UIImage] = [UIImage(named: "electricity")!,UIImage(named: "mobile-payment")!,UIImage(named: "phoneOne")!,UIImage(named: "train")!,UIImage(named: "icons8-home-30")!,UIImage(named: "electricity")!,UIImage(named: "mobile-payment")!,UIImage(named: "phoneOne")!,UIImage(named: "train")!,UIImage(named: "icons8-home-30")!]
    let label: [String] = ["Electricity Bill", "Mobile Bill", "Phone Bill", "Train Bill", "Home Rent","Electricity Bill", "Mobile Bill", "Phone Bill", "Train Bill", "Home Rent"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nav = self.navigationController?.navigationBar
                      nav?.barStyle = .black
                      nav?.barTintColor = UIColor.init(red: 0/255, green: 25/255, blue: 75/255, alpha: 1)
                      nav?.tintColor = UIColor.white
                      nav?.isTranslucent = false
                      nav?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
       
        self.title = "Payments"
        
        // menu button controls
        
        if self.revealViewController() != nil {
                        menuButton.target = self.revealViewController()
                        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
                        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
                   
                   self.revealViewController().rearViewRevealOverdraw = 0 // how much of an overdraw can occur when dragging further than 'rearViewRevealWidth' (default 60.0)
                   self.revealViewController().bounceBackOnOverdraw = false
                   self.revealViewController().toggleAnimationDuration = 0.5// Duration for the revealToggle animation (default 0.25)
                   self.revealViewController().rearViewRevealWidth = 270
                   
                    }
        
    }


}
extension PaymentBarViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PaymentBarCollectionViewCell
        cell.imagePaymentView.image = images[indexPath.row]
        cell.labelPayment.text = label[indexPath.row]
        return cell
        
    }
    
}

extension PaymentBarViewController: UICollectionViewDelegateFlowLayout {
    
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
