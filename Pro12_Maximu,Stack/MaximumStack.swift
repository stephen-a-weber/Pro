//
//  MaximumStack.swift
//  Pro12_Maximu,Stack
//
//  Created by stephen weber on 5/13/22.
//

import Foundation

class MaximumStack {
    var stack = [Int]()
    var maxStack = [Int]()
    var maxInteger = -1
    var loaded = false
   
    
    func popfromStack()->[Int] {
        var result = [Int]()
        if !loaded {
            return [-1,-1]
        }
        let x = stack.popLast()
        let y = maxStack.popLast()
        if stack.count == 0 {
            maxInteger = -1
            loaded = false
        }
        else {
            maxInteger = maxStack[maxStack.count-1]
        }
        result.append(x!)
        result.append(y!)
        return result
    }
    
    func addToStack(_ n: Int) {
        
        if !loaded {
            loaded = true
            maxInteger = n
            stack.append(n)
            maxStack.append(n)
        }
        else {
            if n > maxInteger {
                maxInteger = n
                stack.append(n)
                maxStack.append(n)
            }
            else {
                stack.append(n)
                maxStack.append(maxInteger)
            }
        }
        
        
    }
    
    func solve(_ n: [Int]) -> Int {
        
        
        
        
        return 1
    }
    
    
}
