//
//  MagicIndex.swift
//  MagicIndex
//
//  Created by stephen weber on 5/9/22.
//

import Foundation

class MagicIndex {
    var a = [Int]()
    
    func binarySearch()-> Int{
        
        var low = 0
        var high = a.count-1
        var mid = high/2
        while mid != a[mid] {
            if a[mid]>mid {
                high = mid
                mid = (mid + low) / 2
            }
            else {
                low = mid
                mid = (mid + high) / 2
            }
            if (abs(high-low)<=1) {
                return -1
            }
        }
        return mid
        
    }
}
