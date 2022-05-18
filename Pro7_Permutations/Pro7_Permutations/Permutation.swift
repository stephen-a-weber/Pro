//
//  Permutation.swift
//  Pro7_PermutationsTests
//
//  Created by stephen weber on 5/12/22.
//

import Foundation
import SwiftUI
class Permutations {
    
    
    func perm (_ n:[Int])->[[Int]]{
        var result = [[Int]]()
    
        var r = [Int]()
      
        var u = (n,r)
        
        var storage = [u]
        
        while storage.count > 0 {
            
            let A = storage.popLast()
            var x = A!.0
            var y = A!.1
            if x.count == 0 {
                result.append(y)
            }
            else {
                
                for i in 0..<x.count {
                    var X = x
                    var Y = y
                    let P = X.remove(at: i)
                    Y.append(P)
                    storage.append((X,Y))
                }
                
                
            }
          
            
          
        }
            
        
            
        
        
        print(result)
        
        return result
    }
    
    func removeDuplicates(_ n: [[Int]])->[[Int]] {
       var N=Set<[Int]>()
      
        for i in 0..<n.count {
            var j = n[i]
          //  j.sort() opps the whole
            // point of this array is a permutation
            // and I go and sort it
            // a bit under the weather
            // sick if I ever read
                //this again
            //in NY
            // not sure if the future
            // works for me.
            // Me and Godzilla still there?
            N.insert(j)
            
            
        }
        var ret = Array(N)
        ret.sort{ $0[1] < $1[1]}
        return ret
    }
  
}
