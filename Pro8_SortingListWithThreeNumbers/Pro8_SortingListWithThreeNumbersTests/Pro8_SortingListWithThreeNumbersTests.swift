//
//  Pro8_SortingListWithThreeNumbersTests.swift
//  Pro8_SortingListWithThreeNumbersTests
//
//  Created by stephen weber on 5/12/22.
//

import XCTest
@testable import Pro8_SortingListWithThreeNumbers

class Pro8_SortingListWithThreeNumbersTests: XCTestCase {
    var sorting : SortingJustThree!
    override func setUpWithError() throws {
        
        
        sorting = SortingJustThree()
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
 
    func testSortthree() {
        
        let a = [1,2,3]
        XCTAssertEqual(sorting.solution(a),a)
    }
    
    func testSortthree2() {
        let b =    [1,2,3]
        let a = [2,1,3]
        XCTAssertEqual(sorting.solution(a),b)
    }
    func testSortthree22() {
        let a =    [1,2,3,2,1,2,3,2,1,2,1,2,2,1,1,2,3]
        let b = [1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 3, 3, 3]
        XCTAssertEqual(sorting.solution(a),b)
    }
    

}
