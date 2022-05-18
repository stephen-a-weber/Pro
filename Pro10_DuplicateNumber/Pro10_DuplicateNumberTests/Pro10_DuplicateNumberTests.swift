//
//  Pro10_DuplicateNumberTests.swift
//  Pro10_DuplicateNumberTests
//
//  Created by stephen weber on 5/13/22.
//

import XCTest
@testable import Pro10_DuplicateNumber

class Pro10_DuplicateNumberTests: XCTestCase {
    var duplicate : Duplicate!
    override func setUpWithError() throws { duplicate = Duplicate()
        
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

    func testWhatuplicate() {
        let input = [4,3,2,1,2,3,4]
       
        XCTAssertEqual(duplicate.solve(input),1)
    }

    func test2() {
        let input = [ 1,1,2,2,4,4,5,5,6]
        XCTAssertEqual(duplicate.solve(input),6)
        
    }
    
}
