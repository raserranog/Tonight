//
//  Filter.swift
//  Tonight
//
//  Created by Andres Sosa on 12/04/16.
//  Copyright © 2016 Andres Sosa. All rights reserved.
//

import UIKit

class Filter: NSObject {
    
    private var _rate : Int!
    private var _price : Int!
    private var _distance : Int!
    private var _open : Bool!
    private var _show : Bool!
    private var _reseted : Bool!
    
    var rate: Int{ get{ if _rate == nil{ _rate = 0 }; return _rate }}
    var price: Int{ get{ if _price == nil{ _price = 0 }; return _price }}
    var distance: Int{ get{ if _distance == nil{ _distance = 0 }; return _distance }}
    var open: Bool{ get{ if _open == nil{ _open = false }; return _open }}
    var show: Bool{ get{ if _show == nil{ _show = false }; return _show }}
    var reseted: Bool{ get{ if _reseted == nil{ _reseted = false }; return _reseted }}
    
    
    
    override init(){
        self._rate = 0
        self._price = 0
        self._distance = 0
        self._open = false
        self._show = false
        self._reseted = true
        
    }
    
    func clearFilter() {
        
        self._rate = 0
        self._price = 0
        self._distance = 0
        self._open = false
        self._show = false
        self._reseted = false
    }
    
    func updateRate() {
        
        if (_rate < 3){ _rate = _rate + 1 }
        else {_rate = 0}
        self._reseted = false

    }
    func updatePrice() {
        
        if (_price < 3){ _price = _price + 1 }
        else {_price = 0}
        self._reseted = false
        
    }
    func updateDistance() {
        
        if (_distance < 3){ _distance = _distance + 1 }
        else {_distance = 0}
        self._reseted = false
    }
    func updateOpen() {
        
        if (_open == true ){ _open = false }
        else {_open = true}
        self._reseted = false
    }
    func updateShow() {
        
        if (_show == true ){ _show = false }
        else {_show = true}
        self._reseted = false
    }
    
    
}
