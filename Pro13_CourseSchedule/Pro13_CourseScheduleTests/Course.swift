    //
    //  Course.swift
    //  Pro13_CourseScheduleTests
    //
    //  Created by stephen weber on 5/13/22.
    //

import Foundation


class Course {
    
    var AdjGraph = [Int :[Int] ]()
  //  var cache = [Int : Bool]()
        //   var seen = Set<Int>()
    
    func makeAdj(_ n : [[Int]]){
        
        for A in n {
            self.AdjGraph[A[0], default: []].append(A[1])
        }
    }
    
    
    func hasCycle(_ course: Int,_ seen: Set<Int>, _ cache: inout [Int:Bool]) ->Bool {
        if  cache.keys.contains(course) {
            return cache[course]!
        }
        
        var SEEN = seen
        if SEEN.contains(course) {
            return true
        }
        print(cache,"lovely")
        SEEN.insert(course)
        var ret = false
        
        let storage = AdjGraph[course] ?? []
        for neighbor in storage {
            if hasCycle(neighbor,SEEN,&cache) {
                ret = true
                break
            }
        }
        SEEN.remove(course)
       cache[course] = ret
        return ret
    }
    
    func canComplete()-> Bool {
        
        for course in AdjGraph.keys {
            var c = [Int:Bool]()
            if hasCycle(course,Set<Int>(),&c){
                return false
            }
        }
        return true
        
    }
    
    func solve(_ n:[[Int]])-> Bool {
        makeAdj(n)
        
        let ret =    canComplete()
        return ret
    }
    
    
}
