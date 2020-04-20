//
//  ViewController.swift
//  taskApp
//
//  Created by ankur rathi on 20/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var cardTableView: UITableView!
    
    let pictures: [UIImage] = [UIImage(named: "wallet")!]
    let Balance: [Int] = [100]
    let upcomingPaymentImages: [UIImage] = [UIImage(named: "electricity")!, UIImage(named: "mobile-payment")!, UIImage(named: "phone")!]
    let upcomingPaymentLabel: [String] = ["Electricity Payment Bill", "Mobile bill", "Landline Bill"]
    let IdUpcomingPayment: [String] = ["953286166","75763567","87532675"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let navBar = navi
        
    }
    // defines how many rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return upcomingPaymentImages.count
    }
    // cell to show
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0{
            let cell = (tableView.dequeueReusableCell(withIdentifier: "firstCustomCell", for: indexPath) as! firstCustomCell)
            
            cell.configure(picture: pictures[indexPath.row], balance: Balance[indexPath.row])
            
            return cell
        }else if indexPath.row == 1{
           let cell = (tableView.dequeueReusableCell(withIdentifier: "SecondCustomCell", for: indexPath) as! SecondCustomCell)
            cell.configure()
            return cell
        }else if indexPath.row == 2{
            for i in 0 ... upcomingPaymentImages.count{
            let cell = (tableView.dequeueReusableCell(withIdentifier: "ThirdCustomCell", for: indexPath) as! ThirdCustomCell)
            cell.configure(photo: upcomingPaymentImages[i], targetLabel: upcomingPaymentLabel[i], Idlabel: IdUpcomingPayment[i])
                return cell
            }
            
            
            
        }
        return UITableViewCell()
    }


}

