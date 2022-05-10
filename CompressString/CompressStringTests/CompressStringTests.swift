//
//  CompressStringTests.swift
//  CompressStringTests
//
//  Created by stephen weber on 5/10/22.
//

import XCTest
@testable import CompressString

class CompressStringTests: XCTestCase {
    var solution :CompressString!
    override func setUpWithError() throws {
        solution = CompressString()
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
    func testing(){
        let trial = "aaaaaaaaccccfffffffffrrrrr"
       let result = solution.compressString(string: trial)
    print(result)
    
    }
    func tester() {
        let trial = ""
        let result = solution.compressString(string: trial)
        print(result, "THIS SHOULD BE A NULL STIRNG")
    }
    func testing2(){
        let trial = "abcdefff"
        let result = solution.compressString(string: trial)
        print(result)
        XCTAssertEqual(result,trial)
        
    }

}
