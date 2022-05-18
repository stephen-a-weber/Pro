//
//  MaximumStack.swift
//  LinkedTests
//
//  Created by stephen weber on 5/17/22.
//

import Foundation

class MaximumStack {
    
    var MIN = 999999999999
    
    var MAX = -99999999999
    var theStack = [Int]()
    var maxStack = [Int]()
    var minStack = [Int]()
    
    func push(_ n: Int) {
        if n>MAX {
            MAX = n
        }
        if n<MIN {
            MIN = n
        }
        theStack.append(n)
        maxStack.append(MAX)
        minStack.append(MIN)
        
    }
    func pop() -> (Int,Int,Int){
        if theStack.count == 0 {return (-1,-1,-1)}
        var A = theStack.popLast()!
        var B = maxStack.popLast()!
        var C = minStack.popLast()!
        MAX = maxStack[maxStack.count-1]
        MIN = minStack[minStack.count-1]
        
        return(A,B,C)
    }
    
    
    func max()->Int{
        return MAX
    }
    func min() -> Int {
        return MIN
    }
}
