//
//  CompressString.swift
//  CompressString
//
//  Created by stephen weber on 5/10/22.
//

import Foundation

class CompressString {
    
    
    func compressString(string: String)->String {
        let Length = string.count
        var str = ""
        var title = ""
        var holder = Array(string)
        
        while holder.count > 0 {
            title =  String(holder.remove(at: 0))
            if holder.count == 0 {break}
            var counting = 1
            while String(holder[0] ) == title {
               
                counting += 1
                let _ = holder.remove(at:0)
                if holder.count == 0 {break}
                
            }
            str.append(title)
            str.append(String(counting))
        }
        if Length <= str.count {
            return string
        }
        else {
            return str
        }
    }
    
}
