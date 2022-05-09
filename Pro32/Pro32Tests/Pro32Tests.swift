//
//  Pro32Tests.swift
//  Pro32Tests
//
//  Created by stephen weber on 5/9/22.
//
//
/*
 
 
 The classes of Node and Solution
 are in file
 Intersection.swift
 */





import XCTest
@testable import Pro32

class Pro32Tests: XCTestCase {
    var node : Node!
    var solution : Solution!
    override func setUpWithError() throws {
        
        solution = Solution()
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
    func testIntersection() {
        
        let a = Node(1)
        a.next = Node(2)
        a.next?.next = Node(3)
        a.next?.next?.next = Node(4)
        
        let b = Node(6)
        b.next = a.next?.next
            //a=    1 -> 2 -> 3 -> 4 -> nil
            //b=    6 -> 3 -> 4 -> nil
        XCTAssertEqual(solution.length(a: a),4)
        XCTAssertEqual(solution.length(a: b),3)
        
        let y = solution.intersection(a:a,b:b)
        print(a)
        print(b)
        print(y)
        
        let c = Node(9)
        c.next = Node(17)
        c.next?.next = Node(23)
        print()
        print(a)
        print(c)
        let x = solution.intersection(a:a,b:c)
        print(x)
        
        
        
    }
    func testCircularLists() {
        let b = Node(7)
        let a = Node(1)
        a.next = Node(2)
        a.next?.next = Node(3)
        a.next?.next?.next = b
        b.next = a
        let p = solution.CorruptCircular(a:a)
            // cannot print circular list
        print("The Node that is circularly listed is",p)
            //The Node that is circularly listed is 1
        
    }
    
    func testMyUnderstandingofNodeSets() {
        let a = Node(45)
        let P =  solution.testSets(a:a)
        print(P.value)
    }
    
}
