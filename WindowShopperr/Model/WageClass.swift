//
//  File.swift
//  WindowShopperr
//
//  Created by Admin on 3/6/19.
//  Copyright © 2019 NanoSoft. All rights reserved.
//

import Foundation
class WageClass {
    class func calculateHourePrice(WithWage wage:Double , AndPrice price :Double)->Int{
        return Int(ceil(price/wage))
    }
}
