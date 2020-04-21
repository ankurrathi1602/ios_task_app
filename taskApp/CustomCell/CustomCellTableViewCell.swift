//
//  CustomCellTableViewCell.swift
//  taskApp
//
//  Created by ankur rathi on 21/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var paymentView: UIView!
    @IBOutlet weak var upcomingLabel: UILabel!
    
    @IBOutlet weak var recentPaymentsView: UILabel!
    
    
        func paymentSuccessConfigure(){
        
        recentPaymentsView.text = "Recent Payments"
        
    }
    
    func paymentConfig(){
       
        upcomingLabel.text = "Upcoming Payments"
        viewBackground(views: paymentView)
        
    }
    
    
    func viewBackground(views: UIView){
        views.layer.shadowColor = UIColor.gray.cgColor
        views.layer.shadowOffset = CGSize(width: 0.8, height: 1.0)
        views.layer.shadowOpacity = 0.8
        views.layer.masksToBounds = false
        views.layer.cornerRadius = 5
    }
    
    
    
}
