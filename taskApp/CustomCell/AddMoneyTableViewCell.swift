//
//  AddMoneyTableViewCell.swift
//  taskApp
//
//  Created by ankur rathi on 23/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class AddMoneyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var walletMoneyCell: UIView!
    

    @IBOutlet weak var amountTextField: UITextField!
    
    @IBOutlet weak var addMoneyCell: UIView!
    
    
    @IBOutlet weak var otherMethodCell: UIView!
    
    @IBOutlet weak var availableBalanceLabel: UILabel!
    
    @IBOutlet weak var otherImage: UIImageView!
    
    @IBOutlet weak var otherLabel: UILabel!
    
    @IBOutlet weak var subOtherLabel: UILabel!
    
    @IBOutlet weak var statusOtherImage: UIImageView!
    
    @IBOutlet weak var arrowImage: UIImageView!
    
    
    // configure the Wallet balance View
    
    func WalletConfigure(availableBal: String){
       
       
        availableBalanceLabel.text = availableBal
        
    viewBackground(views: walletMoneyCell)
    }
    // Add amount cell
    
    func AmountConfigure(){
        addBottomLine(textField: amountTextField)
        viewBackground(views: addMoneyCell)
    }
    

    
    // Other methods configure cell
    
    func OtherMethodConfigure(otherImag: UIImage, otherLab: String, subOtherLab: String, statusImag: UIImage, arrowImag: UIImage){
        
        otherImage.image = otherImag
        otherLabel.text = otherLab
        subOtherLabel.text = subOtherLab
        statusOtherImage.image = statusImag
        arrowImage.image = arrowImag
        
        viewBackground(views: otherMethodCell)
        
    }
    
    
    // changes the background of the views
    func viewBackground(views: UIView){
        views.layer.shadowColor = UIColor.gray.cgColor
        views.layer.shadowOffset = CGSize(width: 0.8, height: 1.0)
        views.layer.shadowOpacity = 0.8
        views.layer.masksToBounds = false
        views.layer.cornerRadius = 5
    }
    func addBottomLine(textField: UITextField){
        
        let border = CALayer()
        let borderWidth = CGFloat(1)
        border.borderColor = UIColor.blue.cgColor
        border.frame = CGRect(x: 0, y: textField.frame.size.height - borderWidth, width: textField.frame.size.width, height: 0.5)
        border.borderWidth = borderWidth
        textField.layer.addSublayer(border)
        textField.layer.masksToBounds = true
        
    }
    
    @IBAction func addMoneyButton(_ sender: Any) {
        
    }
    
    
}
