//
//  MobileViewCell.swift
//  taskApp
//
//  Created by ankur rathi on 21/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class MobileViewCell: UITableViewCell {

    // outlets
    @IBOutlet weak var mobileView: UIView!
    
    @IBOutlet weak var operatorTextField: UITextField!

    
    @IBOutlet weak var mobileTextField: UITextField!
    
    @IBOutlet weak var amountTextField: UITextField!
    
    // main function to configure the changes
    
    func configure(){
        
        self.addBottomLine(textField: operatorTextField)
        self.addBottomLine(textField: mobileTextField)
        self.addBottomLine(textField: amountTextField)
             
        viewBackground(views: mobileView)
              
    }
    
    // view background configurations
    func viewBackground(views: UIView){
         views.layer.shadowColor = UIColor.gray.cgColor
         views.layer.shadowOffset = CGSize(width: 0.8, height: 1.0)
         views.layer.shadowOpacity = 0.8
         views.layer.masksToBounds = false
         views.layer.cornerRadius = 5
     }
    
    // add the bottom line to the text fields
    
    func addBottomLine(textField: UITextField){
        
        let border = CALayer()
        let borderWidth = CGFloat(0.4)
        border.borderColor = UIColor.black.cgColor
        border.frame = CGRect(x: 0, y: textField.frame.size.height - borderWidth, width: textField.frame.size.width, height: 0.5)
        border.borderWidth = borderWidth
        textField.layer.addSublayer(border)
        textField.layer.masksToBounds = true
        
    }
     
    
    
    
    
    
    
}
