//
//  Reversed.swift
//  Pro11_ReverseLinkedListTests
//
//  Created by stephen weber on 5/13/22.
//

import Foundation


class Node {
    var value : Int
    var next : Node?
    
    init(_ value: Int, _ next: Node? = nil) {
        self.value = value
        self.next = next
    }
}
extension Node: CustomStringConvertible {
    var description:String {
    guard let next = next else {
        return " \(value) -> nil"
    }
        return " \(value) ->" + String(describing: next)
}
}

class Reversed {
    
    
    func reverse(_ n: Node?)->Node{
        var temp : Node? = n
        
        var prev : Node? = nil
        var curr = n
        
        while curr != nil {
            
            temp  = curr?.next
            curr?.next = prev
            prev = curr!
            curr = temp
            
            
            
        }
        return prev!
        
        
   
    }
    
    
    
}
