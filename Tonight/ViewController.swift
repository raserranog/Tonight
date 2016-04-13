//
//  ViewController.swift
//  Tonight
//
//  Created by Andres Sosa on 10/04/16.
//  Copyright © 2016 Andres Sosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

   
    @IBAction func facebookLogInBtnPressed(sender: AnyObject) {
        performSegueWithIdentifier("PokemonDetailsVC", sender: nil)
    }
    
    

}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    func removeGestureHideKeyboard(){
    let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
    view.removeGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
}

