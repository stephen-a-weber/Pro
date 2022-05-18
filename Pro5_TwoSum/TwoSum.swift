    //
    //  TwoSum.swift
    //  Pro5_TwoSum
    //
    //  Created by stephen weber on 5/11/22.
    //

import Foundation

class TwoSum {
    
    
    func twoS(_ n: [Int],_ t: Int)->[Int] {
        var Dict = [n[0]:0]
        
        for i in 1..<n.count {
            
            if let K = Dict[t-n[i]] {
                return [K,i]
            }
            else
                {
                Dict[n[i]] = i
                }
        }
        
        return [-1]
    }
}
