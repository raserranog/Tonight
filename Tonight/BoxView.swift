//
//  BoxView.swift
//  Tonight
//
//  Created by Andres Sosa on 10/04/16.
//  Copyright © 2016 Andres Sosa. All rights reserved.
//

import UIKit

class BoxView: UIView {
    
    override func awakeFromNib() {
        
        layer.cornerRadius = 5.0
        layer.shadowColor = UIColor(red: SHADOW_COLOR, green: SHADOW_COLOR, blue: SHADOW_COLOR, alpha: 0.5).CGColor
        layer.shadowOpacity = 0.5
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSizeMake(0.0, 2.0)
    }

}
