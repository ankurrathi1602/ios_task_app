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
    
    @IBOutlet weak var menuBarButton: UIBarButtonItem!
    
    
    let picImages: [UIImage] = [UIImage(named: "electricity")!,UIImage(named: "mobile-payment")!,UIImage(named: "phoneOne")!,UIImage(named: "train")!,UIImage(named: "icons8-home-30")!,UIImage(named: "electricity")!,UIImage(named: "mobile-payment")!,UIImage(named: "phoneOne")!,UIImage(named: "train")!,UIImage(named: "icons8-home-30")!]
    let topLabel: [String] = ["Electricity Bill", "Mobile Bill", "Phone Bill", "Train Bill", "Home Rent","Electricity Bill", "Mobile Bill", "Phone Bill", "Train Bill", "Home Rent"]
    let middleLabel: [String] = ["76783442","87634786","9974882","CT862736","87673676","76783442","87634786","9974882","CT862736","87673676"]
    let bottomLabel: [String] = ["12/02/2012", "12/03/2012", "02/5/2019","02/5/2019","02/5/2019","12/02/2012", "12/03/2012", "02/5/2019","02/5/2019","02/5/2019"]
    let amount: [String] = ["₹2000","₹200","₹204","₹140","₹5000","₹2000","₹200","₹204","₹140","₹5000"]
    let status: [String] = ["Success","Success","Failed","Success","Success","Success","Success","Failed","Success","Success"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nav = self.navigationController?.navigationBar
                      nav?.barStyle = .black
                      nav?.barTintColor = UIColor.init(red: 0/255, green: 25/255, blue: 75/255, alpha: 1)
                      nav?.tintColor = UIColor.white
                      nav?.isTranslucent = false
                      nav?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    
        // Menu bar controls
        
        if self.revealViewController() != nil {
                        menuBarButton.target = self.revealViewController()
                        menuBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
                        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
                   
                   self.revealViewController().rearViewRevealOverdraw = 0 // how much of an overdraw can occur when dragging further than 'rearViewRevealWidth' (default 60.0)
                   self.revealViewController().bounceBackOnOverdraw = false
                   self.revealViewController().toggleAnimationDuration = 0.5// Duration for the revealToggle animation (default 0.25)
                   self.revealViewController().rearViewRevealWidth = 270
                   
                    }
        
        
        self.title = "History"
        
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
