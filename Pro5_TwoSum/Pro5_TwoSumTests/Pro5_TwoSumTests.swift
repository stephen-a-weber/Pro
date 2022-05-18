//
//  Pro5_TwoSumTests.swift
//  Pro5_TwoSumTests
//
//  Created by stephen weber on 5/11/22.
//

import XCTest
@testable import Pro5_TwoSum

class Pro5_TwoSumTests: XCTestCase {
    var twoSum : TwoSum!
    override func setUpWithError() throws {
        twoSum = TwoSum()
        
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

    func testReturnIndicesofTwoSumTarget() {
        let testArray = [1,5]
        let testNumber = 6
        let answer = [0,1]
        XCTAssertEqual(twoSum.twoS(testArray, testNumber),answer)
        
    }
    func testReturnIndicesofTwoSumTarget2() {
        let testArray = [1,5,7]
        let testNumber = 6
        let answer = [0,1]
        XCTAssertEqual(twoSum.twoS(testArray, testNumber),answer)
        print(twoSum.twoS(testArray, testNumber))
    }
    func testReturnIndicesofTwoSumTarget3() {
        let testArray = [2,7,11,15]
        let testNumber = 18
        let answer = [1,2]
        XCTAssertEqual(twoSum.twoS(testArray, testNumber),answer)
        print(twoSum.twoS(testArray, testNumber))
    }
}
