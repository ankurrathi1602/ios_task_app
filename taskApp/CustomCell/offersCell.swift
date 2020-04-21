//
//  offersCell.swift
//  taskApp
//
//  Created by ankur rathi on 21/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class offersCell: UITableViewCell {

    
    
    @IBOutlet weak var offerViewCell: UIView!

    @IBOutlet weak var picofferView: UIImageView!
    
    
    @IBOutlet weak var offerLabel: UILabel!
    
    @IBOutlet weak var offerDetailone: UILabel!
    
    @IBOutlet weak var offerDetalTwo: UILabel!
    
    
    @IBOutlet weak var dealButton: UIButton!
    
    func configureOffers(images: UIImage, offer: String, detailOne: String, detailTwo: String){
        
        picofferView.image = images
        offerLabel.text = offer
        offerDetailone.text = detailOne
        offerDetalTwo.text = detailTwo
        
        viewBackground(views: offerViewCell)
        
        
    }
    
    func viewBackground(views: UIView){
           views.layer.shadowColor = UIColor.gray.cgColor
           views.layer.shadowOffset = CGSize(width: 0.8, height: 1.0)
           views.layer.shadowOpacity = 0.8
           views.layer.masksToBounds = false
           views.layer.cornerRadius = 5
       }
    
    
}
