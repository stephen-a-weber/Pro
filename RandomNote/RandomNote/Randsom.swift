//
//  Randsom.swift
//  RandomNoteTests
//
//  Created by stephen weber on 5/11/22.
//

import Foundation

class Randsom {
    
    var randsomLetters = ["A","B","C","D","E","F"]
    
    func canSpell(letters: String)->Bool {
        let  p = Array(letters)
        var PDict = [String:Int]()
        for i in randsomLetters {
            PDict[i, default: 0] += 1     /////// note the default value bit in construction
            
        }
   
        var answer = true
        for i in p {
            if randsomLetters.contains(String(i)) {
                PDict[String(i)]! -= 1
                if PDict[String(i)]! < 0 { answer = false}
            }
            else {
                answer = false
            }
            
        }
      
        return answer
    }
}
// O(n) + O(m) Time
// O(1) Space
