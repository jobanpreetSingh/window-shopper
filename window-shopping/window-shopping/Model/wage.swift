//
//  wage.swift
//  window-shopping
//
//  Created by Joban Dhot on 2019-01-07.
//  Copyright © 2019 Joban Dhot. All rights reserved.
//

import Foundation
class Wage{
    class func getHours(forWages wages: Double, andPrice price: Double)-> Int{
        return Int(ceil(price / wages))
    }
    
    
}
