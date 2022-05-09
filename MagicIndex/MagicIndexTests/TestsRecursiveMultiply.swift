//
//  TestsRecursiveMultiply.swift
//  MagicIndexTests
//
//  Created by stephen weber on 5/9/22.
//

import XCTest
@testable import MagicIndex


class TestsRecursiveMultiply: XCTestCase {
    var P : RecursiveMultiply!
    override func setUpWithError() throws {
        P = RecursiveMultiply()
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

  
    func testMultiply(){
        
        XCTAssertEqual(P.multiply(2,3),6)
        XCTAssertEqual(P.multiply(2,-3),-6)
        XCTAssertEqual(P.multiply(-2,-3),6)
        XCTAssertEqual(P.multiply(-2,3),-6)
        
        
        XCTAssertEqual(P.multiply(21,72),1440+72)
    }
    
    
}
