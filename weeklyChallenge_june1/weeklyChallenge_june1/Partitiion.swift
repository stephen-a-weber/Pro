//
//  Partitiion.swift
//  weeklyChallenge_june1Tests
//
//  Created by stephen weber on 6/1/22.
//

import Foundation

class Partition {
    
    func canPartition(r: [Int])-> Bool {
        
        var total = 1
        for i in r {
            total *= i
        }
        for i in r {
            let g = total / i
            if g == i { return true}
            
            
        }
        return false
    }
}
