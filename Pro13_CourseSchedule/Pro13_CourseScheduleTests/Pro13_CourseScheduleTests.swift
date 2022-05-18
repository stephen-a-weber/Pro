//
//  Pro13_CourseScheduleTests.swift
//  Pro13_CourseScheduleTests
//
//  Created by stephen weber on 5/13/22.
//

import XCTest
@testable import Pro13_CourseSchedule

class Pro13_CourseScheduleTests: XCTestCase {
    var course : Course!
    override func setUpWithError() throws {
        
        
        course = Course()
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

    func testWhatSchedule() {
        let input = [[0,1]]
       var result = course.solve(input)
        print(result,",,,")
       XCTAssertEqual(result,true)
    }

    func testWhatSchedule2() {
        let input = [[0,1],[1,0]]
        var result = course.solve(input)
        print(result,",,,")
        XCTAssertEqual(result,false)
    }
    
    func testWhatSchedule22() {
         let input = [[0,1],[0,2],[1,6],[2,3],[1,8],[3,5]]
        
        var result = course.solve(input)
        print(result,",,,")
        XCTAssertEqual(result,true)
    }
    func testWhatSchedule222() {
        let input = [[0,1],[0,2],[1,2],[2,3],[3,0],[3,5]]
        
        var result = course.solve(input)
        print(result,",,,")
        XCTAssertEqual(result,false)
    }
    func testWhatSchedule2522() {
        let input = [[0,1],[1,2],[2,3],[3,5],[2,5],[3,5],[1,6]]
        
        var result = course.solve(input)
        print(result,",,,")
        XCTAssertEqual(result,true)
    }
    func testAdjGraphCreation() {
        
        let input = [[0,1]]
        course.makeAdj(input)
        XCTAssertEqual(course.AdjGraph,[0:[1]])
    
    }
    
    func testAdjGraphCreation2() {
        
        
        let input = [[0,1],[0,2],[1,3],[2,3],[1,8],[3,5]]
        course.makeAdj(input)
        XCTAssertEqual(course.AdjGraph,[2: [3], 0: [1, 2], 1: [3, 8], 3: [5]])
        
    }
    
    func testcheckAllAdjGraphLinks() {
        let input = [[0,1],[0,2],[1,3],[2,0],[1,8],[3,5]]
        course.makeAdj(input)
        var cycle = course.canComplete()
        print(course.AdjGraph)
        print(cycle)
      //  XCTAssertEqual(cycle,(true || false))
        
    }
    
    
    
}
