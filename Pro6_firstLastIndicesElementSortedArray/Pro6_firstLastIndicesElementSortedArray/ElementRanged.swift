    //
    //  ElementRanged.swift
    //  Pro6_firstLastIndicesElementSortedArray
    //
    //  Created by stephen weber on 5/11/22.
    //

import Foundation
import SwiftUI

class ElementRanged {
    
    
    func find(_ n: [Int], _ t: Int)->[Int]{
        let length = n.count - 1
        var low = 0
        var high = length
        var mid = (low + high) / 2
        
        while n[mid] != t {
            
            if n[mid]<t {
                low = mid
                mid = (mid + high)/2
                
            }
            else if
                
                n[mid]>t {
                high = mid
                mid = (mid + low) / 2
            }
        }
        print(mid,low,high)
   low = mid
        while low > 0 {
            print("low",mid,low,high)
            if n[low-1]==t { low -= 1}
            else {
                break}
        }
    
        high = mid
        while high < length {
            print("high",mid,low,high)
            if n[high+1] == t { high += 1}
            else{
                break
            }
           
            
        }
        
        return [low,high]
    }
    
    
  
}



