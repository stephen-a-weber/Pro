//
//  Pro7_PermutationsTests.swift
//  Pro7_PermutationsTests
//
//  Created by stephen weber on 5/12/22.
//

import XCTest
@testable import Pro7_Permutations

class Pro7_PermutationsTests: XCTestCase {
    var permutations : Permutations!
    override func setUpWithError() throws {
        permutations = Permutations()
        
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
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.}

    }
        func testPermutations() {
        
        
        let A = [1,2,3]
        let B=[[3, 2, 1], [3, 1, 2], [2, 3, 1], [2, 1, 3], [1, 3, 2], [1, 2, 3]]
        XCTAssertEqual(permutations.perm(A),B)
        
    }

    
    func testswap() {
        
        let A = [1,2]
        let B = [[2, 1], [1, 2]]
        XCTAssertEqual(permutations.perm(A),B)
    }
    
    func testremove() {
        
        let A=[[1,1],[1,1],[1,2],[1,2],[2,3],[3,2]]
        let B = [[1,1],[1,2],[3,2],[2,3]]
        XCTAssertEqual(Set(permutations.removeDuplicates(A)),Set(B))
    }
    
    func testduplicates() {
        
        
        
        let A = [1,3,3]
        let B=[ [3, 1, 3], [1, 3, 3], [3,3,1]]
               var result = permutations.removeDuplicates(permutations.perm(A))
      print (result)
        print(B)
        XCTAssertEqual(Set(result),Set(B))
        /*
         [[3, 3, 1], [3, 1, 3], [3, 3, 1], [3, 1, 3], [1, 3, 3], [1, 3, 3]]
         [[3, 1, 3], [3, 3, 1], [1, 3, 3]]
         [[3, 1, 3], [1, 3, 3], [3, 3, 1]]
         */
        // well assert that the set of them is equal
    }
    
    
}
