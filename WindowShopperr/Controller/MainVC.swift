//
//  ViewController.swift
//  WindowShopperr
//
//  Created by Admin on 3/6/19.
//  Copyright © 2019 NanoSoft. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var WageTxt: CustomTextField!
    @IBOutlet weak var priceTxt: CustomTextField!
   
    @IBOutlet weak var countHoursLbL: UILabel!
    
    @IBOutlet weak var hoursLBL: UILabel!
    
    @IBAction func clearBTN(_ sender: UIButton)
    {
    WageTxt.text = ""
    priceTxt.text = ""
    countHoursLbL.isHidden = true
    hoursLBL.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //make uibutton by code
        let btn=UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 60))
        btn.setTitle("Calculate", for: .normal)
        btn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        btn.backgroundColor=#colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)
        btn.addTarget(self, action: #selector(MainVC.calc), for: .touchUpInside)
        
        WageTxt.inputAccessoryView=btn
        priceTxt.inputAccessoryView=btn
        
        countHoursLbL.isHidden=true
        hoursLBL.isHidden=true
    
    }
    
    ///func
    @objc func calc() {
        if let WageText = WageTxt.text , let priceText = priceTxt.text {
            if let wage = Double (WageText) , let price = Double (priceText){
                countHoursLbL.isHidden=false
                hoursLBL.isHidden=false
                countHoursLbL.text = "\(WageClass.calculateHourePrice(WithWage: wage, AndPrice: price))"
                view.endEditing(true)
                
            }
        }
    
    
    print("calcu....")
    }

}
