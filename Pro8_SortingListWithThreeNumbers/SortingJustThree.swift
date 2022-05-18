//
//  SortingJustThree.swift
//  Pro8_SortingListWithThreeNumbers
//
//  Created by stephen weber on 5/12/22.
//

import Foundation

class SortingJustThree {
    
    func solution(_ n: [Int])-> [Int] {
        var N = n
        var low = 0
        var high = N.count - 1
        var temp = 0
        var index = 0
        while index < high {
            
           let t = N[index]
            if t == 1 {
                temp = N[low]
                N[low] = 1
                low += 1
                N[index] = temp
                index += 1
            }
            if t == 2 {
                index += 1
            }
            if t == 3 {
                temp = N[high]
                N[high] = 3
                high -= 1
                N[index] = temp
            }
            
        }
        return N
        
        
        
       
        
        
    }
}
