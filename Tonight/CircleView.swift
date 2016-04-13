//
//  CircleView.swift
//  Tonight
//
//  Created by Andres Sosa on 13/04/16.
//  Copyright © 2016 Andres Sosa. All rights reserved.
//

import UIKit

class CircleView: UIView {

    override func awakeFromNib() {
        layer.cornerRadius = layer.bounds.height / 2
        layer.shadowColor = UIColor(red: SHADOW_COLOR, green: SHADOW_COLOR, blue: SHADOW_COLOR, alpha: 0.9).CGColor
        layer.shadowOpacity = 0.7
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSizeMake(5.0, 2.0)
    }

}
