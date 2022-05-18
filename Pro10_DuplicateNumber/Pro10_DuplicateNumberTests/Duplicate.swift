//
//  Duplicate.swift
//  Pro10_DuplicateNumberTests
//
//  Created by stephen weber on 5/13/22.
//

import Foundation

class Duplicate {
    

    
    
    func solve(_ n: [Int])-> Int {
        
        
        var total = 0
        for i in n {
            total ^= i
        }
        
        
        
        return total
    }
}
