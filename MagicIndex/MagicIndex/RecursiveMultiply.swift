//
//  RecursiveMultiply.swift
//  MagicIndexTests
//
//  Created by stephen weber on 5/9/22.
//

import Foundation

class RecursiveMultiply {
    
    
    func multiply(_ x: Int, _ y: Int)->Int {
        
        if y == 0 || x == 0 {
            return 0
        }
        
            else if (y<0) {
                return -(x - multiply(x,y+1))
            }
            else {return (x + multiply(x,y-1))
                
            }
        }
           
        
        
    

    
    
}
