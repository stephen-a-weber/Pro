//
//  Swap.swift
//  weeklyChallenge_june1Tests
//
//  Created by stephen weber on 6/1/22.
//

import Foundation

class Swap {
    
    func doubleSwap(s: String, a: Character, b: Character)-> String {
        
        var e = Array(s)
        var k = [Character]()
        for i in e {
            if i == a { k.append(b)
                
            }
            else if i == b {k.append(a)}
            else { k.append(i)}
            
        }
        var p = ""
        for i in k {
            p += String(i)
        }
        return p
    }
}
