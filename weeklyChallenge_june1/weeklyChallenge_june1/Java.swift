//
//  Java.swift
//  weeklyChallenge_june1Tests
//
//  Created by stephen weber on 6/1/22.
//

import Foundation

class Java {
    
    func reOrder(r: [Int], order: String)->[Int] {
        
        
        
        var t = r
        var rStringArray = [String]()
        var exit = [Int]()
        for i in r { rStringArray.append(String(i))}
     //   print(rStringArray)
        for i in rStringArray {
            var q = Array(i)
         //   print(q)
            if order == "asc" {q.sort(by:<)}
            else {q.sort(by:>)}
           // print(q)
        var b = ""
            for h in q {
                b += String(h)
            }
            exit.append(Int(b)!)
            
        }
        return exit
            
                    
    }
}
