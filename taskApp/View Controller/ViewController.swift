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
    
    @IBOutlet weak var tabViewColor: UIView!
    
    let pictures: [UIImage] = [UIImage(named: "wallet")!]
    let Balance: [Int] = [100]
    let upcomingPaymentImages: [UIImage] = [UIImage(named: "electricity")!, UIImage(named: "mobile-payment")!, UIImage(named: "phone")!,UIImage(named: "train")!,UIImage(named: "icons8-home-30")!,UIImage(named: "electricity")!, UIImage(named: "mobile-payment")!, UIImage(named: "phone")!,UIImage(named: "train")!,UIImage(named: "icons8-home-30")!]
    let upcomingPaymentLabel: [String] = ["Electricity Payment Bill", "Mobile bill", "Landline Bill", "Train Bill", "home Rent","Electricity Payment Bill", "Mobile bill", "Landline Bill", "Train Bill", "home Rent"]
    let IdUpcomingPayment: [String] = ["953286166","75763567","87532675","53457446","21538711","953286166","75763567","87532675","53457446","21538711"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let nav = self.navigationController?.navigationBar
        nav?.barTintColor = UIColor.init(red: 0/255, green: 25/255, blue: 75/255, alpha: 1)
        nav?.tintColor = UIColor.white
        nav?.isTranslucent = false
        nav?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        tabViewColor.backgroundColor = UIColor.init(red: 0/255, green: 25/255, blue: 75/255, alpha: 1)
    }
    
    // defines how many rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return upcomingPaymentImages.count + 4
    }
    // cell to show
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0{
            let cell = (tableView.dequeueReusableCell(withIdentifier: "firstCustomCell", for: indexPath) as! firstCustomCell)
            
            cell.layer.backgroundColor = UIColor.clear.cgColor
            cell.backgroundColor = .clear
            tableView.layer.backgroundColor = UIColor.clear.cgColor
            tableView.backgroundColor = .clear
            
            cell.configure(picture: pictures[indexPath.row], balance: Balance[indexPath.row])
            
            return cell
            
        }else if indexPath.row == 1{
           let cell = (tableView.dequeueReusableCell(withIdentifier: "slider", for: indexPath) as! SliderTableViewCell)
            
            cell.layer.backgroundColor = UIColor.clear.cgColor
            cell.backgroundColor = .clear
            tableView.layer.backgroundColor = UIColor.clear.cgColor
            tableView.backgroundColor = .clear
            
            cell.configureBackground()
            
            return cell
            
        }else if indexPath.row == 2{
           let cell = (tableView.dequeueReusableCell(withIdentifier: "SecondCustomCell", for: indexPath) as! SecondCustomCell)
            cell.layer.backgroundColor = UIColor.clear.cgColor
            cell.backgroundColor = .clear
            tableView.layer.backgroundColor = UIColor.clear.cgColor
            tableView.backgroundColor = .clear
            
            cell.configure()
            return cell
        }else if indexPath.row > 3{
        
            let cell = (tableView.dequeueReusableCell(withIdentifier: "ThirdCustomCell", for: indexPath) as! ThirdCustomCell)
            cell.layer.backgroundColor = UIColor.clear.cgColor
            cell.backgroundColor = .clear
            tableView.layer.backgroundColor = UIColor.clear.cgColor
            tableView.backgroundColor = .clear
            
            
            cell.configure(photo: upcomingPaymentImages[indexPath.row - 4], targetLabel: upcomingPaymentLabel[indexPath.row - 4], Idlabel: IdUpcomingPayment[indexPath.row - 4])
            
                return cell
       }
            else if indexPath.row == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellTableViewCell", for: indexPath) as! CustomCellTableViewCell

            cell.layer.backgroundColor = UIColor.clear.cgColor
            cell.backgroundColor = .clear
            tableView.layer.backgroundColor = UIColor.clear.cgColor
            tableView.backgroundColor = .clear

            cell.upcomingConfig(upcomPayment: "Upcoming Payments")
////            cell.paymentConfig(payLabel: "Recent")

            return cell
        }
        return UITableViewCell()
    }


}

