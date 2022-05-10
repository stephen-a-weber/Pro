//
//  PowerSetTests.swift
//  MagicIndexTests
//
//  Created by stephen weber on 5/9/22.
//

import XCTest
@testable import MagicIndex

class PowerSetTests: XCTestCase {
    var powerSet : PowerSet!
    override func setUpWithError() throws {
        powerSet = PowerSet()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testSubsetsofPowerSet(){
  
        print([1,2,3,4].combinationsWithoutRepetition)
    }
    /*
     [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3], [4], [1, 4], [2, 4], [1, 2, 4], [3, 4], [1, 3, 4], [2, 3, 4], [1, 2, 3, 4]]
     */

    
    
    
    func testUnderstandflatMapSolution(){
       let r = powerSet.solution([1,2,3])
        print(r)
    }
    
    /*
     [Set([1, 2]), Set([2, 3]), Set([]), Set([3, 1]), Set([2]), Set([3, 2, 1]), Set([3]), Set([1])]
     */
    
    /*
     the key is to know you are using sets so that duplicates will disappear
     start with a set of an empty set
     run through all elements
     duplicating each subset in the set with the union of the new element
     
    
     */
    
    
    
    func testBinary(){
        
        let trial = [1,2,3,4,5]
        let result = powerSet.powerSetBinary(trial)
        print(result)
        print(result.count)
    }
    /*
     [[1, 2, 3, 4, 5], [1, 2, 3, 4], [1, 2, 3, 5], [1, 2, 3], [1, 2, 4, 5], [1, 2, 4], [1, 2, 5], [1, 2], [1, 3, 4, 5], [1, 3, 4], [1, 3, 5], [1, 3], [1, 4, 5], [1, 4], [1, 5], [1], [2, 3, 4, 5], [2, 3, 4], [2, 3, 5], [2, 3], [2, 4, 5], [2, 4], [2, 5], [2], [3, 4, 5], [3, 4], [3, 5], [3], [4, 5], [4], [5], []]
     32
     */
}
