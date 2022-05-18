//
//  Pro6_firstLastIndicesElementSortedArrayTests.swift
//  Pro6_firstLastIndicesElementSortedArrayTests
//
//  Created by stephen weber on 5/11/22.
//

import XCTest
@testable import Pro6_firstLastIndicesElementSortedArray

class Pro6_firstLastIndicesElementSortedArrayTests: XCTestCase {
    var elementRanged : ElementRanged!
    override func setUpWithError() throws {
        elementRanged = ElementRanged()
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

    func testFindRangeElementSortedArray() {
        
        var sortedArray = [1,1,1,1,1,1]
        
        var target = 1
        var answer = [0,5]
        XCTAssertEqual(elementRanged.find(sortedArray,target),answer)
        
        
    }
    func testFindRangeElementSortedArray2() {
        
        var sortedArray = [1,1,1,1,1,1,1,1,3,3,3,3,3,1,1]
        /////////////////////////////////////0 1 2 3   4   5   6  7   8  9  10 11 12131415
        var target = 3
        var answer = [8,12]
        var running = elementRanged.find(sortedArray,target)
        XCTAssertEqual(running,answer)
        
        print(running)
    }
    func testFindRangeElementSortedArray3() {
        
        var sortedArray = [1,1,1,1,1,1,1,3,3,3, 3, 3, 3, 1, 1]
            ///////////////////////////////0 1   2   3  4  5   6  7  8   9  10    11   12   13  14
        var target = 3
        var answer = [7,12]
        var running = elementRanged.find(sortedArray,target)
        XCTAssertEqual(running,answer)
        
        print(running)
    }

}
