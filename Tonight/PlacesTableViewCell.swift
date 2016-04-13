//
//  PlacesTableViewCell.swift
//  Tonight
//
//  Created by Andres Sosa on 11/04/16.
//  Copyright © 2016 Andres Sosa. All rights reserved.
//

import UIKit

class PlacesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var star1Img: UIImageView!
    @IBOutlet weak var star2Img: UIImageView!
    @IBOutlet weak var star3Img: UIImageView!
    @IBOutlet weak var star4Img: UIImageView!
    @IBOutlet weak var star5Img: UIImageView!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        star1Img.clipsToBounds = true
        star2Img.clipsToBounds = true
        star3Img.clipsToBounds = true
        star4Img.clipsToBounds = true
        star5Img.clipsToBounds = true
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    override func drawRect(rect: CGRect) {
        
    }

}
