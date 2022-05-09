//
//  MagicIndexTests.swift
//  MagicIndexTests
//
//  Created by stephen weber on 5/9/22.
//

import XCTest
@testable import MagicIndex

class MagicIndexTests: XCTestCase {
    var magicIndex : MagicIndex!
    override func setUpWithError() throws {
        
        magicIndex = MagicIndex()
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

    func testFINDINDEXTHATEQUALSARRAYVALUE() {
        //this is what I assume it means
        var a : [Int] = [-1, 0,1 , 3, 7, 33, 44, 55, 66, 88]
        a.sort()
        for (i,j) in a.enumerated() {
            if i == j {
                print ("An answer is index : ",i)
            }
        }
    }

    func testAssumingOneAnswerUsingBinarySearch() {
        var a : [Int] = [-1, 0,1 , 3, 7, 33, 44, 55, 66, 88]
        a.sort()
        let mI = MagicIndex()
        mI.a = a
        let answer = mI.binarySearch()
        XCTAssertEqual(answer,3)
        //answer is the 3rd index from test
        
    }
    
    func testNoAnswerWithBinarySearch(){
        var a : [Int] = [-1, 0,1 , 2, 7, 33, 44, 55, 66, 88]
        a.sort()
        let mI = MagicIndex()
        mI.a = a
        let answer = mI.binarySearch()
        XCTAssertEqual(answer,-1)
        print(answer)
    }
    
}
