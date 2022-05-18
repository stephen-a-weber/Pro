//
//  search.swift
//  Pro14_PythagoreanTriplet
//
//  Created by stephen weber on 5/14/22.
//

import XCTest
@testable import Pro14_PythagoreanTriplet

class search: XCTestCase {
    var pythagorean : Pythagorean!
    override func setUpWithError() throws {
        pythagorean = Pythagorean()
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

    
    func testit() {
        
        let input = [1,5,12,14,7,8,13]
        let result = pythagorean.search(input)
        print(result)
        XCTAssertEqual(result,true)
    }

}
