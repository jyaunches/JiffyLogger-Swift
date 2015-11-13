//
//  TipCalculator.swift
//  JLExample
//
//  Created by Julietta Yaunches on 11/12/15.
//  Copyright © 2015 Julietta Yaunches. All rights reserved.
//

import Foundation

public class TipCalculator {
    
    // 2
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    // 3
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    // 4
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    // 5
    func possibleTips() -> Array<String>{
        print("15%: \(calcTipWithTipPct(0.15))")
        print("18%: \(calcTipWithTipPct(0.18))")
        print("20%: \(calcTipWithTipPct(0.20))")


       return ["Portland","San Francisco","Cupertino"]
        

        
    }
    
}