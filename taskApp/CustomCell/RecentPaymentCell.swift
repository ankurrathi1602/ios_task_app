//
//  RecentPaymentCell.swift
//  taskApp
//
//  Created by ankur rathi on 21/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class RecentPaymentCell: UITableViewCell {

    
    @IBOutlet weak var recentPaymentCell: UIView!
    
    @IBOutlet weak var pictureView: UIImageView!
    
    @IBOutlet weak var topLabelView: UILabel!
    
    @IBOutlet weak var bottomLabelView: UILabel!
    
    @IBOutlet weak var middleLabelView: UILabel!
    
    @IBOutlet weak var statusView: UILabel!
    
    @IBOutlet weak var amountView: UILabel!
    
    func configure(picture: UIImage, topLabel: String, middleLabel: String, bottomLabel: String, amount: String, status: String){
        
        pictureView.image = picture
        topLabelView.text = topLabel
        middleLabelView.text = middleLabel
        bottomLabelView.text = bottomLabel
        amountView.text = amount
        statusView.text = status
        
           viewBackground(views: recentPaymentCell)
           
       }
       
    func viewBackground(views: UIView){
          views.layer.shadowColor = UIColor.gray.cgColor
          views.layer.shadowOffset = CGSize(width: 0.8, height: 1.0)
          views.layer.shadowOpacity = 0.8
          views.layer.masksToBounds = false
          views.layer.cornerRadius = 5
      }

}
