//
//  StringHelper.swift
//  JiffyExample
//
//  Created by Julietta Yaunches on 11/16/15.
//  Copyright © 2015 yaunches. All rights reserved.
//

import Foundation

public extension String {
    func formatWithArguments(var theArgs: [String]) -> String {
        let result: String
        
        if(theArgs.count > 0){
            theArgs.appendContentsOf(["X", "X", "X", "X", "X", "X", "X", "X", "X", "X"])
            result = String(format: self, theArgs[0], theArgs[1], theArgs[2], theArgs[3], theArgs[4], theArgs[5],
                theArgs[6], theArgs[7], theArgs[8], theArgs[9])
        }else{
            result = self
        }
        return result
    }
}
