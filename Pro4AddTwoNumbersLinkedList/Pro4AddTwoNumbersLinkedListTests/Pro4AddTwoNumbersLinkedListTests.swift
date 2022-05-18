//
//  Pro4AddTwoNumbersLinkedListTests.swift
//  Pro4AddTwoNumbersLinkedListTests
//
//  Created by stephen weber on 5/11/22.
//

import XCTest
@testable import Pro4AddTwoNumbersLinkedList


class Pro4AddTwoNumbersLinkedListTests: XCTestCase {
    var solution : Solution<Int>!
    override func setUpWithError() throws {
        solution = Solution<Int>()
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

    
    func testMakeLinkedListAdd() {
        
        let L = Node(2)
        L.next = Node(4)
        L.next?.next = Node(3)
        // L = 342
        
        let S = Node(5)
        S.next = Node(6)
        S.next?.next = Node(4)
        // S = 465
        
        var answer = solution.addTwoNumbers(a:L,b:S)
        print(answer)
        
        //7 -> 0 -> 8 ->  nil backward left backward...
        
    }
    func testMakeLinkedListAddIterative() {
        
        let L = Node(2)
        L.next = Node(4)
        L.next?.next = Node(3)
        L.next?.next?.next = Node(9)
            // L = 9342
        
        let S = Node(5)
        S.next = Node(6)
        S.next?.next = Node(4)
        S.next?.next?.next = Node(3)
            // S = 3465
        
        let answer = solution.addTwoNumbersIteratively(a:L,b:S)
        print(answer)
         
            //12807
        
    }
    

}
