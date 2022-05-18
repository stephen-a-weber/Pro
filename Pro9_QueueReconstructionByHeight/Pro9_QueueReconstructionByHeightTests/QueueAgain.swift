//
//  QueueAgain.swift
//  Pro9_QueueReconstructionByHeightTests
//
//  Created by stephen weber on 5/12/22.
//

import Foundation
class QueueAgain {

    
    func solve(n: [[Int]] ) -> [[Int]] {
      //  var N   = [[7,0],[4,4],[7,1],[5,0],[6,1],[5,2]]
       var N = n
      
          N.sort { (-$0[0],$0[1]) < (-$1[0],$1[1]) }
        var result = [[Int]]()
        for i in N{
            result.insert(i, at: i[1])
        }
        return result
        
    }
    
}
