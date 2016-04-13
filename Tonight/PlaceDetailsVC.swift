//
//  PlaceDetailsVC.swift
//  Tonight
//
//  Created by Andres Sosa on 12/04/16.
//  Copyright © 2016 Andres Sosa. All rights reserved.
//

import UIKit

class PlaceDetailsVC: UIViewController {
    
    @IBOutlet weak var rateBtn: MyButton!
    @IBOutlet weak var priceBtn: MyButton!
    @IBOutlet weak var distanceBtn: MyButton!
    @IBOutlet weak var openBtn: MyButton!
    @IBOutlet weak var showBtn: MyButton!
    @IBOutlet weak var subsSwitch: UISwitch!
    @IBOutlet weak var subsLbl: UILabel!
    @IBOutlet weak var placeImage: UIImageView!
    @IBOutlet weak var uberBtnImg: UIImageView!
    @IBOutlet weak var okBtn: MyButton!
    
    var filter : Filter!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func backBtnPressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func rateBtnPressed(sender: AnyObject) {
        performSegueWithIdentifier("rateDetails", sender: nil)
    }
    @IBAction func priceBtnPressed(sender: AnyObject) {
        performSegueWithIdentifier("priceDetailsVC", sender: nil)
    }
    @IBAction func distanceBtnPressed(sender: AnyObject) {
        performSegueWithIdentifier("distanceDetails", sender: nil)
    }
    @IBAction func openBtnPressed(sender: AnyObject) {
        performSegueWithIdentifier("hourDetailsVC", sender: nil)
    }
    @IBAction func showBtnPressed(sender: AnyObject) {
        performSegueWithIdentifier("showDetailsVC", sender: nil)
    }
    @IBAction func okBtnPRessed(sender: AnyObject) {
        
    }
    @IBAction func subsSwitchChanged(sender: AnyObject) {
    }
    

}
