//
//  MobileRehargeController.swift
//  taskApp
//
//  Created by ankur rathi on 21/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class MobileRehargeController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mobileView: UITableView!

    
    
    let picImages: [UIImage] = [UIImage(named: "electricity")!,UIImage(named: "mobile-payment")!,UIImage(named: "phoneOne")!,UIImage(named: "train")!,UIImage(named: "icons8-home-30")!,UIImage(named: "electricity")!,UIImage(named: "mobile-payment")!,UIImage(named: "phoneOne")!,UIImage(named: "train")!,UIImage(named: "icons8-home-30")!]
    let topLabel: [String] = ["Electricity Bill", "Mobile Bill", "Phone Bill", "Train Bill", "Home Rent","Electricity Bill", "Mobile Bill", "Phone Bill", "Train Bill", "Home Rent"]
    let middleLabel: [String] = ["76783442","87634786","9974882","CT862736","87673676","76783442","87634786","9974882","CT862736","87673676"]
    let bottomLabel: [String] = ["12/02/2012", "12/03/2012", "02/5/2019","02/5/2019","02/5/2019","12/02/2012", "12/03/2012", "02/5/2019","02/5/2019","02/5/2019"]
    let amount: [String] = ["₹2000","₹200","₹204","₹140","₹5000","₹2000","₹200","₹204","₹140","₹5000"]
    let status: [String] = ["Success","Success","Failed","Success","Success","Success","Success","Failed","Success","Success"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }

     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return picImages.count + 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0{
            let cell = (tableView.dequeueReusableCell(withIdentifier: "MobileViewCell", for: indexPath)) as! MobileViewCell
            cell.configure()
            return cell
        }
        else if indexPath.row > 1{
            let cell = (tableView.dequeueReusableCell(withIdentifier: "RecentPaymentCell", for: indexPath)) as! RecentPaymentCell
            cell.configure(picture: picImages[indexPath.row - 2], topLabel: topLabel[indexPath.row - 2], middleLabel: middleLabel[indexPath.row - 2], bottomLabel: bottomLabel[indexPath.row - 2], amount: amount[indexPath.row - 2], status: status[indexPath.row - 2])
            
            return cell
        }else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellTableViewCell", for: indexPath) as! CustomCellTableViewCell
            
            cell.paymentConfig(payLabel: "Recent Payment")
            return cell
        }
        
        return UITableViewCell()
    }

}
