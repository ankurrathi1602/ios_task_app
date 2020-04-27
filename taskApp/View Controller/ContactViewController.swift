//
//  ContactViewController.swift
//  taskApp
//
//  Created by ankur rathi on 27/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.revealViewController() != nil {
                    menuButton.target = self.revealViewController()
              
                    menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
              
                    self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
                }
          
          
          
          let nav = self.navigationController?.navigationBar
                        nav?.barStyle = .black
                        nav?.barTintColor = UIColor.init(red: 0/255, green: 25/255, blue: 75/255, alpha: 1)
                        nav?.tintColor = UIColor.white
                        nav?.isTranslucent = false
                        nav?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]

          
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
