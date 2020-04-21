//
//  offersController.swift
//  taskApp
//
//  Created by ankur rathi on 21/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class offersController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    
    @IBOutlet weak var offerView: UITableView!
    
    let picOffer: [UIImage] = [UIImage(named: "discount")!]
    let offerLabel: [String] = ["100% discount","90% discount","40% discount","70% discount","100% discount","100% discount","90% discount","40% discount","70% discount","100% discount"]
    let offerOneDetail: [String] = ["⤷ Apply as soon as possible","⤷ Apply as soon as possible","⤷ Apply as soon as possible","⤷ Apply as soon as possible","⤷ Apply as soon as possible","⤷ Apply as soon as possible","⤷ Apply as soon as possible","⤷ Apply as soon as possible","⤷ Apply as soon as possible","⤷ Apply as soon as possible"]
    let offerTwoDetail: [String] = ["⤷ Apply as soon as possible","⤷ Apply as soon as possible","⤷ Apply as soon as possible","⤷ Apply as soon as possible","⤷ Apply as soon as possible","⤷ Apply as soon as possible","⤷ Apply as soon as possible","⤷ Apply as soon as possible","⤷ Apply as soon as possible","⤷ Apply as soon as possible"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return offerLabel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "offersCell", for: indexPath) as! offersCell
        cell.configureOffers(images: picOffer[0], offer: offerLabel[indexPath.row], detailOne: offerOneDetail[indexPath.row], detailTwo: offerTwoDetail[indexPath.row])
        
        return cell
    }
    
    
}
