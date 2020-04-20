//
//  SecondCustomCell.swift
//  taskApp
//
//  Created by ankur rathi on 20/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class SecondCustomCell: UITableViewCell {

    
    @IBOutlet weak var secondCerdView: UIView!
    
    func configure(){
        
        viewBackground(views: secondCerdView)
        
    }
    
   func viewBackground(views: UIView){
       views.layer.shadowColor = UIColor.gray.cgColor
       views.layer.shadowOffset = CGSize(width: 0.8, height: 1.0)
       views.layer.shadowOpacity = 0.8
       views.layer.masksToBounds = false
       views.layer.cornerRadius = 5
   }
}
