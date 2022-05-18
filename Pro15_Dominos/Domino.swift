//
//  Domino.swift
//  Pro15_Dominos
//
//  Created by stephen weber on 5/14/22.
//

import Foundation


class Domino {
    
    func fall(_ n: String)->String {
        let Q = Array(n)
        let dist = Q.count
        var arrayRight = Array(repeating: 0, count: dist)
        var arrayLeft = Array(repeating:0,count:dist)
        var Amount = 0
        for i in 0..<dist {
            if Q[i] == ">" {
                arrayRight[i] = 100
                Amount = 99
            }
            else if Q[i] == "<" { arrayRight[i] = 0
                Amount = 0
            }
            else { arrayRight[i] = Amount
                Amount -= 1
            }
            
        }
        for i in stride(from: dist-1, to: 0, by: -1) {
            if Q[i] == "<" {
                arrayLeft[i] = -100
                Amount = -99
            }
            else if Q[i] == ">" {
                arrayLeft[i] = 0
                Amount = 0
            }
            else {
                arrayLeft[i] = Amount
                Amount += 1
            }
        }
        
        var returnString = ""
        for i in 0..<dist {
            if (arrayRight[i]+arrayLeft[i] > 0) {
                returnString += "/"
            }
            else if (arrayRight[i]+arrayLeft[i] < 0) {
                returnString += "\\"
            }
            else {
                returnString += "|"
            }
        }
        
        return returnString
    }
}
