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
    var useTimestamps = false
    var dateProvider: JFDateProvider!

    init(timestamps: Bool, dateProvider: JFDateProvider) {
        self.useTimestamps = timestamps
        self.dateProvider = dateProvider;
    }
    
    func log(log: String...) {        
        var theArgs: [String] = [];
        
        for index in 1..<log.count {
            theArgs.append(log[index])
        }
        
        let logLine: String = log[0];
        let logEntry = logLine.formatWithArguments(theArgs)
        
        if(self.useTimestamps){
            self.queue.append(String(format:"%@ - %@", self.dateProvider.dateForLogs(), logEntry))
        }else{
            self.queue.append(logEntry)
        }
    }

    func lastEntry() -> String! {
        if(self.queue.count > 0){
            return self.queue[self.queue.count-1];
        }else{
            return nil
        }
    }
}