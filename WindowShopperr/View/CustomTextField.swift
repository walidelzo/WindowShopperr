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

    override func draw(_ rect: CGRect) {
        let size:CGFloat = 20
        let currencyLBL=UILabel(frame: CGRect(x: 5, y: (frame.size.height/2)-size/2, width: 20, height: 20))
        currencyLBL.backgroundColor=#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        currencyLBL.clipsToBounds=true
        currencyLBL.layer.cornerRadius=3.0
        currencyLBL.textColor=#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencyLBL.textAlignment = .center
       
        let formmatter = NumberFormatter()
        formmatter.numberStyle = .currency
        formmatter.locale = .current
        currencyLBL.text=formmatter.currencySymbol
        addSubview(currencyLBL)
        
    }
    
    
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
        
//     if let place=placeholder {
//        let placeAttr = NSAttributedString(string: place, attributes: [.foregroundColor : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)])
//      attributedText=placeAttr
//        }
       font=UIFont.systemFont(ofSize: 13)
        keyboardType = .decimalPad
        textAlignment = .center
        
    }
    
    
}
