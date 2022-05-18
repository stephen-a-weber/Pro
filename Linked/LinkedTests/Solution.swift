    //
    //  Solution.swift
    //  LinkedTests
    //
    //  Created by stephen weber on 5/17/22.
    //

import Foundation


class Solution {
    
    var head : Node?
    
    
    
    func length(_ a: Node? ) -> Int {
        var temp = a
        var count = 0
        while (temp != nil) {
            count += 1
            temp = temp!.next
            
        }
        return count }
    
    
    func reverseNode(_ a : Node) -> Node {
        var ret : Node?
        var A = a
        let length = length(a)
     
        var stack = [A.value]
        
        var temp : Node?
        for _ in 0..<length-1{
            A=A.next!
          
            stack.append(A.value)
        }
        stack.reverse()
        ret = Node(stack[0])
        temp = ret
       
        
        let len = stack.count
        for i in 1..<len {
            temp!.next = Node(stack[i])
            
            temp = temp!.next
        }
        
        return ret!
        
    }

    func trueAdd(_ a: Node, _ b: Node)-> Node {
        var A = reverseNode(a)
        var B = reverseNode(b)
        var P = add(A,B)
        var C = reverseNode(P)
        return C
    }


func add(_ a: Node?, _ b: Node?) -> Node {
    
    var A = a
    var B = b
    
    var SUM = 0
    var carry = 0
    
    var temp = Node(666)
    var current = Node(666)
    var ret = Node(666)
    var starting = true
    while A != nil || B != nil {
        
        
        
        SUM  = A!.value + B!.value + carry
        carry = SUM / 10
        SUM = SUM % 10
        
        temp = Node(SUM)
        
        if starting {
            current = temp
            ret = temp
            starting = false
            
        }
        
        
        else {
            current.next = temp
            current = current.next!
        }
        
        
        
        if A!.next != nil || B!.next != nil   {
            if A!.next == nil { A!.next = Node(0)
                
            }
            if B!.next == nil { B!.next = Node(0)}
            
            
        }
        else if carry != 0 {
            current.next = Node(carry)
        }
        
        A = A!.next
        B = B!.next
        
        
        
        
        
        
        
    }
    
    
    return ret
    
    
}
}
