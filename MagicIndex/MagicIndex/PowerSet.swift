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
    func powerSetBinary(_ n : [Int])->[[Int]]{
        let amount = n.count
       
        
        var number = 1<<(amount) - 1
   //     This is 2 to the power of n looking for binary representation
        var result = [[Int]]()
        while number>=0 {
            
           var subset = [Int]()
            
            //str is a string representation of binary number
            var str = Array(String(number,radix:2))
            let t =  amount-str.count
            for index in t..<amount {
                
                if str[index-t] == "1" {
                    subset.append( n [index])
                }
            }
            result.append(subset)
            
          number -= 1
        }
        
        
        
        return result
    }
    
}

extension Array {
    var combinationsWithoutRepetition: [[Element]] {
        guard !isEmpty else {return [[]]}
        return Array(self[1...]).combinationsWithoutRepetition.flatMap {[$0,[self[0]] + $0]}
    }
}
