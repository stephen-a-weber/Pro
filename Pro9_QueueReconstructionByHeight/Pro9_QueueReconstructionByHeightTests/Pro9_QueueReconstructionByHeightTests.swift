//
//  Pro9_QueueReconstructionByHeightTests.swift
//  Pro9_QueueReconstructionByHeightTests
//
//  Created by stephen weber on 5/12/22.
//

import XCTest
@testable import Pro9_QueueReconstructionByHeight

class Pro9_QueueReconstructionByHeightTests: XCTestCase {
    var quiet : QueueAgain!
    override func setUpWithError() throws {
          quiet = QueueAgain()
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

    
    func testwhatQueue() {
        
       let input = [[7,0],[4,4],[7,1],[5,0],[6,1],[5,2]]
 
        let t =    quiet.solve(n:input)
      
        print(t)
    }

}
/*
 sort to
 [[7, 0], [7, 1], [6, 1], [5, 0], [5, 2], [4, 4]]
 too.
 [[5, 0], [7, 0], [5, 2], [6, 1], [4, 4], [7, 1]]
 
 
 Tall people like 7 see no one infrontof them
 
 */
