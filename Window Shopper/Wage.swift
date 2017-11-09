//
//  Wage.swift
//  Window Shopper
//
//  Created by Osama Mac on 11/10/17.
//  Copyright © 2017 Osama Mac. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int{
        return Int(ceil(price/wage))
    }
}
