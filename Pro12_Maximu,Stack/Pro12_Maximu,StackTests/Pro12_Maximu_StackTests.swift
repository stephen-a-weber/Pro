//
//  Pro12_Maximu_StackTests.swift
//  Pro12_Maximu,StackTests
//
//  Created by stephen weber on 5/13/22.
//

import XCTest
@testable import Pro12_Maximu_Stack

class Pro12_Maximu_StackTests: XCTestCase {
    var maximum  : MaximumStack!
    override func setUpWithError() throws {
        
        
        maximum = MaximumStack()
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

    func testbuild(){
        var input = [ 1,2,3,4,5,6,7,8]
        var testing = maximum.solve(input)
        
        
    }

    
    func testAddtoStack() {
        XCTAssertEqual(maximum.loaded,false)
        maximum.addToStack(5)
        XCTAssertEqual(maximum.loaded,true)
        XCTAssertEqual(maximum.stack,[5])
        XCTAssertEqual(maximum.maxInteger,5)
        XCTAssertEqual(maximum.maxStack,[5])
        
    }
    
    func testPopfromStack() {
        
        XCTAssertEqual(maximum.popfromStack(),[-1,-1])
        
        maximum.addToStack(5)
        maximum.addToStack(1)
        XCTAssertEqual(maximum.popfromStack(),[1,5])
        XCTAssertEqual(maximum.popfromStack(),[5,5])
        XCTAssertEqual(maximum.popfromStack(),[-1,-1])
    }
    
    func testPROtest() {
        maximum.addToStack(1)
        maximum.addToStack(2)
        maximum.addToStack(3)
        maximum.addToStack(2)
        XCTAssertEqual(maximum.popfromStack(),[2,3])
        XCTAssertEqual(maximum.popfromStack(),[3,3])
        XCTAssertEqual(maximum.popfromStack(),[2,2])
        XCTAssertEqual(maximum.popfromStack(),[1,1])
        XCTAssertEqual(maximum.popfromStack(),[-1,-1])
    }
}
