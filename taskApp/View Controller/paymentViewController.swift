//
//  paymentViewController.swift
//  taskApp
//
//  Created by ankur rathi on 22/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class paymentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var paymentView: UITableView!
    
    
    let picImages: [UIImage] = [UIImage(named: "electricity")!,UIImage(named: "mobile-payment")!,UIImage(named: "phone")!,UIImage(named: "train")!,UIImage(named: "icons8-home-30")!,UIImage(named: "electricity")!,UIImage(named: "mobile-payment")!,UIImage(named: "phone")!,UIImage(named: "train")!,UIImage(named: "icons8-home-30")!]
    let topLabel: [String] = ["Electricity Bill", "Mobile Bill", "Phone Bill", "Train Bill", "Home Rent","Electricity Bill", "Mobile Bill", "Phone Bill", "Train Bill", "Home Rent"]
    let middleLabel: [String] = ["76783442","87634786","9974882","CT862736","87673676","76783442","87634786","9974882","CT862736","87673676"]
    let bottomLabel: [String] = ["12/02/2012", "12/03/2012", "02/5/2019","02/5/2019","02/5/2019","12/02/2012", "12/03/2012", "02/5/2019","02/5/2019","02/5/2019"]
    let amount: [String] = ["₹2000","₹200","₹204","₹140","₹5000","₹2000","₹200","₹204","₹140","₹5000"]
    let status: [String] = ["Success","Success","Failed","Success","Success","Success","Success","Failed","Success","Success"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Payments"
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return picImages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecentPaymentCell", for: indexPath) as! RecentPaymentCell
        cell.configure(picture: picImages[indexPath.row], topLabel: topLabel[indexPath.row], middleLabel: middleLabel[indexPath.row], bottomLabel: bottomLabel[indexPath.row], amount: amount[indexPath.row], status: status[indexPath.row])
        
        return cell
    }
    
    
}
