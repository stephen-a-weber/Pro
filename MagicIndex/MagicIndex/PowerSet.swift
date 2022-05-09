//
//  PowerSet.swift
//  MagicIndex
//
//  Created by stephen weber on 5/9/22.
//


import Foundation

class PowerSet {
    var array = [Int]()
    
    
    func solution<T>(_ elements: Set<T>) -> Set<Set<T>> {
        guard elements.count > 0 else {return [[]]}
     
        var powerset : Set<Set<T>> = [[]]
        
        for element in elements {
        print("**********",element,"***********")
            for subset in powerset {
               print(subset,"    ",powerset)
              
                powerset.insert(subset.union([element]))
                print(".....",powerset)
            }
        }
        return powerset
        
    }
}

extension Array {
    var combinationsWithoutRepetition: [[Element]] {
        guard !isEmpty else {return [[]]}
        return Array(self[1...]).combinationsWithoutRepetition.flatMap {[$0,[self[0]] + $0]}
    }
}
