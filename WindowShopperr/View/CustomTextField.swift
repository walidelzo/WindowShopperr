//
//  CustomTextField.swift
//  WindowShopperr
//
//  Created by Admin on 3/6/19.
//  Copyright © 2019 NanoSoft. All rights reserved.
//

import UIKit
@IBDesignable
class CustomTextField: UITextField {

    override func prepareForInterfaceBuilder() {
        CustomizeText()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        CustomizeText()
    }
    
    func CustomizeText() {
        //write code here
        backgroundColor=#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius=5.0
        
//      if let place=placeholder {
//            let placeAttr = NSAttributedString(string: place, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
//      attributedText=placeAttr
//        }
        font=UIFont.systemFont(ofSize: 13)
        keyboardType = .decimalPad
        textAlignment = .center
        
    }
    
    
}
