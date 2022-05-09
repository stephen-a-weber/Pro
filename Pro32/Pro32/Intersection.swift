//
//  Intersection.swift
//  A32
//
//  Created by stephen weber on 5/9/22.
//
/*
 
  Class Node
 
 Class Solution
     func Intersection
     func CircularLists
 
 These two classes in this file
 
 See A32Tests for running conditions for solutions.
 
 
 
 */
import Foundation

import SwiftUI

class Node : Equatable,Hashable{
    static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
   
  
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(ObjectIdentifier(self))
    }
       
    
    var value : Int = 0
    var next : Node?
    init (_ value : Int, next: Node? = nil) {
        self.value = value
        self.next = next
      
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        guard let next = next else {
            return "\(value) -> nil"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
    }
 


class Solution {
    
    func length(a: Node?) -> Int {
        
        
        var len = 0
        var current = a
        while current != nil {
            current = current!.next
            len += 1
        }
        return len
    }
    
    
    func intersection(a: Node, b: Node)-> (String,Node) {
        
        let lenA = length(a: a)
        let lenB = length(a: b)
        
        var currA = a
        var currB = b
        
        if lenA > lenB {
            for _ in 0..<(lenA-lenB) {
                currA = currA.next!
            }
        }
        else {
            for _ in 0..<(lenB-lenA) {
                currB = currB.next!
            }
        }
       let noIntersection = Node(0)
        while currA !== currB {
            guard let AcurrA = currA.next else {
               return ("NO",noIntersection)
            }
            guard let AcurrB = currB.next else {
                return ("NO",noIntersection)
            }
            currA = AcurrA
            currB = AcurrB
                   
        }
        return ("Yes",currA)
        
    }
    
    func CorruptCircular(a: Node)->Int{
        var storage = Set<Node>()
        
        var current = a
        let notACase = Node(0)
        var angel = true
        while angel {
            angel = false
            if storage.contains(current) {
               
                return current.value
            }
            else {
                
                storage.insert(current)
               
                angel = true
            }
          //  guard let cur = current.next else { return current}
            
            current = current.next!
            
            
            
        }
        
        return notACase.value
    }
    
    
    func testSets(a: Node) -> Node {
        
        var storage = Set<Node>()
        let r = Node(5)
        storage.insert(r)
        r.next = a
        storage.insert(r.next!)
        for i in storage {
            print(i)
        }
        if storage.contains(a) {
            print("YEP")
        }
        return a
    }
}
