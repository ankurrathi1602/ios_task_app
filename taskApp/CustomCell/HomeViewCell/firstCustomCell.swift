//
//  CellCard.swift
//  taskApp
//
//  Created by ankur rathi on 20/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class firstCustomCell: UITableViewCell {


    @IBOutlet weak var firstCardView: UIView!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var balanceView: UILabel!

        // set up the cell
    func configure(picture: UIImage, balance: Int){
        pictureView.image = picture
        balanceView.text = "Wallet Balance: ₹\(balance)"
        
        addButton.backgroundColor = .clear
        addButton.layer.cornerRadius = 5
        addButton.layer.borderWidth = 1
        addButton.layer.borderColor = #colorLiteral(red: 0, green: 0.1432859898, blue: 0.366879344, alpha: 1)
        
        viewBackground(views: firstCardView)
        
    }
    
    func viewBackground(views: UIView){
        views.layer.shadowColor = UIColor.gray.cgColor
        views.layer.shadowOffset = CGSize(width: 0.8, height: 1.0)
        views.layer.shadowOpacity = 0.8
        views.layer.masksToBounds = false
        views.layer.cornerRadius = 5
    }
    
    
    
}
