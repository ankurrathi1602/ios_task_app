//
//  AddMoneyViewController.swift
//  taskApp
//
//  Created by ankur rathi on 23/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class AddMoneyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   

    @IBOutlet weak var addMoneyView: UITableView!
    
    
    let availableBalance: String = "Available Balance ₹200"
    let bottomViewImage: [UIImage] = [UIImage(named: "electricity")!,UIImage(named: "mobile-payment")!,UIImage(named: "phoneOne")!,UIImage(named: "train")!,UIImage(named: "icons8-home-30")!,UIImage(named: "electricity")!,UIImage(named: "mobile-payment")!,UIImage(named: "phoneOne")!]
    let bottomLabel: [String] = ["Electricity bill money","Mobile bill money","Phone bill money","train bill money","home bill money","Electricity bill money","Mobile bill money","Phone bill money"]
    let subBottomLabel: [String] = ["Electricity bill money","Mobile bill money","Phone bill money","train bill money","home bill money","Electricity bill money","Mobile bill money","Phone bill money"]
    let statusImage: [UIImage] = [UIImage(named: "new")!,UIImage(named: "exclamation")!]
    let arrowRight: [UIImage] = [UIImage(named: "right arrow")!]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bottomLabel.count + 2
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "WalletMoney", for: indexPath) as! AddMoneyTableViewCell
            
            cell.WalletConfigure(availableBal: availableBalance)
            return cell
            
        }else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "AmountMoney", for: indexPath) as! AddMoneyTableViewCell
            
            cell.AmountConfigure()
            return cell
        }else if indexPath.row > 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "OtherMethods", for: indexPath) as! AddMoneyTableViewCell
            
            if indexPath.row == 2 || indexPath.row == 5 || indexPath.row == 7{ cell.OtherMethodConfigure(otherImag: bottomViewImage[indexPath.row - 2], otherLab: bottomLabel[indexPath.row - 2], subOtherLab: subBottomLabel[indexPath.row - 2], statusImag: statusImage[0], arrowImag: arrowRight[0])
                
                return cell
            }
        cell.OtherMethodConfigure(otherImag: bottomViewImage[indexPath.row - 2], otherLab: bottomLabel[indexPath.row - 2], subOtherLab: subBottomLabel[indexPath.row - 2], statusImag: statusImage[1], arrowImag: arrowRight[0])
            return cell
            
        }
        
           return UITableViewCell()
       }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 150
        }else if indexPath.row == 1{
            return 210
        }
        return 70
    }
       
    
}
