//
//  MoreInfoVC.swift
//  Tonight
//
//  Created by Andres Sosa on 12/04/16.
//  Copyright © 2016 Andres Sosa. All rights reserved.
//

import UIKit

class MoreInfoVC: UIViewController, UITabBarDelegate {
    @IBOutlet weak var tabBar: UITabBar!

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.delegate = self

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        tabBar.selectedItem = tabBar.items![2]
    }
    
    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        
        switch item.title! {
        case "Descuentos": performSegueWithIdentifier("discFromMoreInfo", sender: nil)
        case "Lugares": performSegueWithIdentifier("placesFromMoreInfo", sender: nil)
        default: break
            
        }
    }

}
