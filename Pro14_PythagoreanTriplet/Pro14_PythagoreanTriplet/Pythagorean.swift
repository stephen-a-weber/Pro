//
//  Pythagorean.swift
//  Pro14_PythagoreanTriplet
//
//  Created by stephen weber on 5/14/22.
//

import Foundation

class Pythagorean {
    
    func search(_ n:  [Int])->Bool {
        
      
        var searchables = Set<Int>()
        for i in n {
            searchables.insert(i*i)
            
        }
        for a in searchables {
            for b in searchables {
                if searchables.contains(a+b) {
                    return true
                }
            }
        }
        return false
    }
}
