//
//  NextPrime.swift
//  weeklyChallenge_june1
//
//  Created by stephen weber on 6/1/22.
//

import Foundation

class Prime {
    
    func nextPrime(r: Int) -> Int {
        if r < 2 { return 2}
        var prime = 0
        var n = r + 1
        if r%2==0 {
            n = r + 1
        }
        else {
            n += 2
        }
        var angel = true
        while true {
            angel = false
            for i in stride(from: 3, through:Int(sqrt(Double(n))+2),by:2) {
                if n%i==0 {
                    angel = true
                    break
                }
                
            }
            if angel {
                n+=2
                
            }
            else {
                return n
                
            }
            
            
        }
        
        
    }
}
