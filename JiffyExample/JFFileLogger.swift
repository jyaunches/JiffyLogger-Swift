//
//  TipCalculator.swift
//  JLExample
//
//  Created by Julietta Yaunches on 11/12/15.
//  Copyright © 2015 Julietta Yaunches. All rights reserved.
//

import Foundation

public class JFFileLogger {
    
    var queue: [String] = []

    init(queue: [String]) {
        self.queue = queue
    }
    
    func log(log: String...) {
        var theArgs: [String] = [];
        
        for index in 1..<log.count {
            theArgs.append(log[index])
        }
        
        let logLine: String = log[0];
        let logEntry: String
        
        if(theArgs.count > 0){
            theArgs.appendContentsOf(["X", "X", "X", "X", "X", "X", "X", "X", "X", "X"])
            logEntry = String(format: logLine, theArgs[0], theArgs[1], theArgs[2], theArgs[3], theArgs[4], theArgs[5],
            theArgs[6], theArgs[7], theArgs[8], theArgs[9])
        }else{
            logEntry = logLine
        }
        
        self.queue.append(logEntry)        
    }
    
    
}