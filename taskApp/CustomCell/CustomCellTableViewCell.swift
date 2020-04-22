//
//  CustomCellTableViewCell.swift
//  taskApp
//
//  Created by ankur rathi on 22/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {

   
    @IBOutlet weak var recentPaymentView: UIView!
    
    @IBOutlet weak var recentPaymentLabel: UILabel!
    
    @IBOutlet weak var upcomingView: UIView!
    
    @IBOutlet weak var upcomingLabel: UILabel!
    
    func paymentConfig(payLabel: String){
        
        recentPaymentLabel.text = payLabel
        
        viewBackground(views: recentPaymentView)
    
        
    }
    
    func upcomingConfig(upcomPayment: String){
        
        upcomingLabel.text = upcomPayment
               
               viewBackground(views: upcomingView)
    }
    
    func viewBackground(views: UIView){
           views.layer.shadowColor = UIColor.gray.cgColor
           views.layer.shadowOffset = CGSize(width: 0.8, height: 1.0)
           views.layer.shadowOpacity = 0.8
           views.layer.masksToBounds = false
           views.layer.cornerRadius = 5
       }
       
    
}
