//
//  TipCalculator.swift
//  SimpleTipCalculator
//
//  Created by Derek Jensen on 5/3/15.
//  Copyright (c) 2015 Derek Jensen. All rights reserved.
//

import Foundation

class TipCalculator {
    
    func calculateTip(billAmount: Float?, taxPercentage: Float?, tipPercentage: Float?) -> Float? {
        if billAmount < 0 {
            let ex = NSException(name: "NegativeBillException", reason: "BillAmount cannot be negative.", userInfo: nil)
            ex.raise()
        }
        
        let bill = billAmount!
        let pTax = taxPercentage!
        let pTip = tipPercentage!
        
        let tax = bill * pTax
        
        let total = bill + tax
        
        let tip = total * pTip
        
        return tip
    }
    
}