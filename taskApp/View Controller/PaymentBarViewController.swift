//
//  PaymentBarViewController.swift
//  taskApp
//
//  Created by ankur rathi on 25/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class PaymentBarViewController: UIViewController {

    
    @IBOutlet weak var paymenyBarView: UICollectionView!
    
    let images: [UIImage] = [UIImage(named: "electricity")!,UIImage(named: "mobile-payment")!,UIImage(named: "phone")!,UIImage(named: "train")!,UIImage(named: "icons8-home-30")!,UIImage(named: "electricity")!,UIImage(named: "mobile-payment")!,UIImage(named: "phone")!,UIImage(named: "train")!,UIImage(named: "icons8-home-30")!]
    let label: [String] = ["Electricity Bill", "Mobile Bill", "Phone Bill", "Train Bill", "Home Rent","Electricity Bill", "Mobile Bill", "Phone Bill", "Train Bill", "Home Rent"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
        
        return CGSize(width: collectionViewWidth/2-2, height: collectionViewWidth/2-2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 2
    }
    
    
    
}
