//
//  AddTwoNumbers.swift
//  Pro4AddTwoNumbersLinkedListTests
//
//  Created by stephen weber on 5/11/22.
//

import Foundation

// Add Two Numbers with a linked list format
// nodes are reversed with data entry
    
    
    class Node<T> {
        var value : T
        var next : Node?
        
        init(_ value : T, next: Node<T>? = nil){
            self.value = value
            self.next = next
        }
        
    }
extension Node:CustomStringConvertible{

    var description: String {
        guard let next = next else {
            return "\(value) ->  nil"}
       
        return"\(value) -> " + String(describing:next)
        
   
    }

    }
    



class Solution<T> {
     
    func addTwoNumbers(a: Node<Int>, b: Node<Int>)-> Node<Int> {
        
        return addTwoNumsHelper(a:a,b:b,c: 0)
    }
    
    
    
    func addTwoNumsHelper(a:Node<Int>,b:Node<Int>,c: Int)-> Node<Int> {
        let val = a.value + b.value + c
        let amount = val / 10
        let ret = Node(val % 10)
        
        if a.next != nil || b.next != nil {
            if a.next == nil { a.next = Node(0)}
            if b.next == nil {b.next = Node(0)}
            ret.next = self.addTwoNumsHelper(a:a.next!,b:b.next!,c:amount)
            
        }
        return ret
        
        
    }
    
    func addTwoNumbersIteratively(a:Node<Int>,b:Node<Int>)-> Node<Int> {
        //fine
        var A = a
        var B = b
        var length = 1
        
        while A.next != nil || B.next != nil {
            length += 1
             
            A=A.next!
            B=B.next!
        }
       A=a
        B=b
        print(length)
        
         
        var Carry = 0
        
        
        var ret = Node(3)
        var current = Node(3)
        var value = 0
        var starting = true
        
        for _ in 0..<length {
            value = A.value + B.value + Carry
         
            Carry = value / 10
            if starting {
                current = Node(value % 10)
                ret = current
                starting = false
            }
            else {
                current.next = Node(value % 10)
                current = current.next!
                
            }
            if Carry != 0 { current.next = Node(Carry)}
            
            A = A.next ?? Node(0)
            B = B.next ?? Node(0)
            
        }
        return ret
    }

}
