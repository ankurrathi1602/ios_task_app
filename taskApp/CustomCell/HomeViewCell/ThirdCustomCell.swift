//
//  ThirdCustomCell.swift
//  taskApp
//
//  Created by ankur rathi on 20/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class ThirdCustomCell: UITableViewCell {

    
    @IBOutlet weak var thirdCardView: UIView!
    
    @IBOutlet weak var PhotoView: UIImageView!
    
    @IBOutlet weak var targetView: UILabel!
    
    @IBOutlet weak var idNumberView: UILabel!
    func configure(photo: UIImage, targetLabel: String, Idlabel: String ){
        PhotoView.image = photo
        targetView.text = targetLabel
        idNumberView.text = Idlabel
    
        viewBackground(views: thirdCardView)
        
    }
    
    func viewBackground(views: UIView){
        views.layer.shadowColor = UIColor.gray.cgColor
        views.layer.shadowOffset = CGSize(width: 0.8, height: 1.0)
        views.layer.shadowOpacity = 0.8
        views.layer.masksToBounds = false
        views.layer.cornerRadius = 5
    }
    
    
}
