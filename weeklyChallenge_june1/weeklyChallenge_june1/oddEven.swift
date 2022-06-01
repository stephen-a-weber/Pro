//
//  oddEven.swift
//  weeklyChallenge_june1Tests
//
//  Created by stephen weber on 6/1/22.
//

import Foundation

class OddEven {
    func oddishOrEvenish(n: Int)->String {
        var g = String(n)
        var e = Array(g)
        var q = [Int]()
        for i in e {
            q.append(Int(String(i))!)
        }
        var total = 0
        for i in q {
            total += i
        }
        
        if total%2==0 { return "Evenish"}
        else { return "Oddish"}
    }
}
