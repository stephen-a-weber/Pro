//
//  HexCode.swift
//  weeklyChallenge_june1
//
//  Created by stephen weber on 6/1/22.
//

import Foundation

class HexCode {
    
    var temporal = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","a","b","c","d","e","f"]
    
    func isValidHexCode(s: String) -> Bool {
        
        let R = Array(s)
        if String(R[0]).first != "#" { return false}
        if  R.count != 7 { return false}
        for i in  1..<7 {
            if temporal.contains(String(R[i])) != true { return false}
        }
        
        return true
        
      
    }
}
