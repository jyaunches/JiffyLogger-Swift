//
//  TipCalculator.swift
//  JLExample
//
//  Created by Julietta Yaunches on 11/12/15.
//  Copyright © 2015 Julietta Yaunches. All rights reserved.
//

import Foundation
import JiffyExample

public class JFFileLogger {
    
    var queue: [String] = []
    
    func log(log: String...) {        
        var theArgs: [String] = [];
        
        for index in 1..<log.count {
            theArgs.append(log[index])
        }
        
        let logLine: String = log[0];
        let logEntry: String = logLine.formatWithArguments(theArgs)        
        self.queue.append(logEntry)        
    }
    
    
}