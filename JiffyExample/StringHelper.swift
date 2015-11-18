//
//  StringHelper.swift
//  JiffyExample
//
//  Created by Julietta Yaunches on 11/16/15.
//  Copyright © 2015 yaunches. All rights reserved.
//

import Foundation

enum StringSubstituionError: ErrorType {
    case NumberOfArguments(expecting: Int)
    case InputFormatIncorrect
}

public extension String {
    func formatWithArguments(var theArgs: [String]) -> String {
        let result: String
        
        let substitutionSpots = self.componentsSeparatedByString("%@").count - 1

        if(theArgs.count > 10){
            NSException(name: "StringSubstituionError", reason: "Too Many Arguments. Limit is 10.", userInfo: nil).raise()
        }

        if(substitutionSpots != theArgs.count){
            NSException(name: "StringSubstituionError", reason: "Number of arguments doesn't match input.", userInfo: nil).raise()
        }
        
        if(theArgs.count > 0){
            theArgs.appendContentsOf(["", "", "", "", "", "", "", "", "", ""])
            result = String(format: self, theArgs[0], theArgs[1], theArgs[2], theArgs[3], theArgs[4], theArgs[5],
                theArgs[6], theArgs[7], theArgs[8], theArgs[9])
        }else{
            result = self
        }
        return result
    }
}
