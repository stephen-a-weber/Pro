//
//  Node.swift
//  LinkedTests
//
//  Created by stephen weber on 5/17/22.
//

import Foundation

class Node : Equatable{
    static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs === rhs
    }
    
    
    var value : Int
    var next : Node?
    
    init(_ value : Int, _ next: Node? = nil ) {
        
        self.value = value
        self.next = next
    }
}
extension Node: CustomStringConvertible {
    var description: String {

      guard let next = next else {
return "\(value) -> nil"
    }
    return "\(value) -> " + String(describing: next)
    }
}
