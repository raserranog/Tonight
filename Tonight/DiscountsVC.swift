//
//  DiscountsVC.swift
//  Tonight
//
//  Created by Andres Sosa on 12/04/16.
//  Copyright © 2016 Andres Sosa. All rights reserved.
//

import UIKit

class DiscountsVC: UIViewController, UITabBarDelegate {
    
    @IBOutlet weak var tabBar: UITabBar!

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.delegate = self

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        tabBar.selectedItem = tabBar.items![1]
    }

    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        
        switch item.title! {
        case "Lugares": performSegueWithIdentifier("placesFromDisc", sender: nil)
        case "Info": performSegueWithIdentifier("moreInfo", sender: nil)
        default: break
            
        }
        
        
        
    }

}
