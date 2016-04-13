//
//  PlacesVC.swift
//  Tonight
//
//  Created by Andres Sosa on 11/04/16.
//  Copyright © 2016 Andres Sosa. All rights reserved.
//

import UIKit

class PlacesVC: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate, UITabBarDelegate {
    
    var _filter : Filter!
    
    var filter: Filter{ get{ if _filter == nil{ _filter = Filter() }; return _filter }}
    
    @IBOutlet weak var placesTableView: UITableView!
    @IBOutlet weak var backgroundImg : UIImageView!
    @IBOutlet weak var filtroIcn : UIImageView!
    @IBOutlet weak var searchBar : UISearchBar!
    @IBOutlet weak var tabBar: UITabBar!
    @IBOutlet weak var discountsTabBarItem: UITabBarItem!
    @IBOutlet weak var moreInfoTabBArItem: UITabBarItem!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        placesTableView.delegate = self
        placesTableView.dataSource = self
        searchBar.delegate = self
        tabBar.delegate = self
        
        backgroundImg.clipsToBounds = true
        filtroIcn.clipsToBounds = true
        filtroIcn.layer.shadowColor = UIColor(red: SHADOW_COLOR, green: SHADOW_COLOR, blue: SHADOW_COLOR, alpha: 0.5).CGColor
        filtroIcn.layer.shadowRadius = 5.0
        filtroIcn.layer.shadowOffset = CGSizeMake(2.0, 3.0)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(PlacesVC.startFilter))
        tap.numberOfTapsRequired = 1
        filtroIcn.addGestureRecognizer(tap)
        filtroIcn.userInteractionEnabled = true
        
        
      
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        tabBar.selectedItem = tabBar.items![0]
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        return placesTableView.dequeueReusableCellWithIdentifier("PlaceCell") as! PlacesTableViewCell
        
    }
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        self.dismissKeyboard()
    }
    
    
    func startFilter() {
        self.performSegueWithIdentifier("startFilter", sender: filter)
    }
    
    func moreInfoVC(){
        self.performSegueWithIdentifier("moreInfoVC", sender: nil)
    
    }

    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
       
        switch item.title! {
        case "Descuentos": performSegueWithIdentifier("discountsVC", sender: nil)
        case "Info": performSegueWithIdentifier("moreInfoVC", sender: nil)
        default: break
            
        }
        
    
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "startFilter"{
            if let filterVCS = segue.destinationViewController as? FilterVC{
                
                if let filterSnd = sender as? Filter{
                    filterVCS.filter = filterSnd
                }
            }
        }
    }
    
   

}
