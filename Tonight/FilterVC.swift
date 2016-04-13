//
//  FilterVC.swift
//  Tonight
//
//  Created by Andres Sosa on 12/04/16.
//  Copyright © 2016 Andres Sosa. All rights reserved.
//

import UIKit

class FilterVC: UIViewController {
    
    var filter :Filter!

    @IBOutlet weak var filterImage: UIImageView!
    @IBOutlet weak var ratesFilterBtn: MyButton!
    @IBOutlet weak var priceFilterBtn: MyButton!
    @IBOutlet weak var distanceFilterBtn: MyButton!
    @IBOutlet weak var openFilterBtn: MyButton!
    @IBOutlet weak var showFilterBtn: MyButton!
    @IBOutlet weak var clearFilterBtn: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        updateFilterMenu()
        
        
        
        
    }
    
    
    @IBAction func ratesFilterBtnPressed(sender: AnyObject) {
        filter.updateRate()
        updateFilterMenu()
        
    }
    @IBAction func priceFilterBtnPressed(sender: AnyObject) {
        filter.updatePrice()
        updateFilterMenu()
    }
    @IBAction func distanceFilterBtnPressed(sender: AnyObject) {
        filter.updateDistance()
        updateFilterMenu()
    }
    
    @IBAction func openFilterBtnPressed(sender: AnyObject) {
        filter.updateOpen()
        updateFilterMenu()
    }
    @IBAction func showFilterBtnPressed(sender: AnyObject) {
        filter.updateShow()
        updateFilterMenu()
    }
    @IBAction func okBtnPressed(sender: AnyObject) {
        performSegueWithIdentifier("PlacesVC", sender: filter)
    }
    @IBAction func clearFilterBtnPressed(sender: AnyObject) {
        filter.clearFilter()
        updateFilterMenu()

    }
    
    func updateFilterMenu() {
        
        if filter.reseted == true { clearFilterBtn.hidden = true }
        else {clearFilterBtn.hidden = false}
        
        switch filter.rate {
        case 0: ratesFilterBtn.setTitle("Calificación: Todos", forState: .Normal )
        case 1: ratesFilterBtn.setTitle("Calificación: Mayor de 4 ⭐️", forState: .Normal )
        case 2: ratesFilterBtn.setTitle("Calificación: Mayor de 3 ⭐️", forState: .Normal )
        case 3: ratesFilterBtn.setTitle("Calificación: Mayor de 2 ⭐️", forState: .Normal )
        default: ratesFilterBtn.setTitle("Calificación: Todos", forState: .Normal )
        }
        
        switch filter.price {
        case 0: priceFilterBtn.setTitle("Cover: Todos", forState: .Normal )
        case 1: priceFilterBtn.setTitle("Cover: Gratis COP 0.00", forState: .Normal )
        case 2: priceFilterBtn.setTitle("Cover: Menor de COP 21.000", forState: .Normal )
        case 3: priceFilterBtn.setTitle("Cover: Menor de COP 51.000", forState: .Normal )
        default: priceFilterBtn.setTitle("Cover: Todos", forState: .Normal )
        }
        
        switch filter.distance {
        case 0: distanceFilterBtn.setTitle("Distancia: Todos", forState: .Normal )
        case 1: distanceFilterBtn.setTitle("Distancia: Menor a 1 Km", forState: .Normal )
        case 2: distanceFilterBtn.setTitle("Distancia: Menor a 5 Km", forState: .Normal )
        case 3: distanceFilterBtn.setTitle("Distancia: Menor a 10 Km", forState: .Normal )
        default: distanceFilterBtn.setTitle("Distancia: Todos", forState: .Normal )
        }
        
        switch filter.open {
        case true: openFilterBtn.setTitle("Estado: Abierto", forState: .Normal )
        case false: openFilterBtn.setTitle("Estado: Todos", forState: .Normal )
        }
        
        switch filter.show {
        case true: showFilterBtn.setTitle("Show: Si", forState: .Normal )
        case false: showFilterBtn.setTitle("Show: Todos", forState: .Normal )
        }
        
        
    }
   
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "PlacesVC"{
            if let placesVC = segue.destinationViewController as? PlacesVC{
                
                if let filterPlaces = sender as? Filter{
                    placesVC._filter = filterPlaces
                }
            }
        }
    }
    

}
