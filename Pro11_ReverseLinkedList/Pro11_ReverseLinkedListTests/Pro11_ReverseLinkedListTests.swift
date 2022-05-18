//
//  Pro11_ReverseLinkedListTests.swift
//  Pro11_ReverseLinkedListTests
//
//  Created by stephen weber on 5/13/22.
//

import XCTest
@testable import Pro11_ReverseLinkedList

class Pro11_ReverseLinkedListTests: XCTestCase {
    var reversed : Reversed!
    override func setUpWithError() throws {
        reversed = Reversed()
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

    
    func testPrintreverse() {
        
        var A = Node(1)
        A.next = Node(2)
        A.next?.next = Node(3)
        A.next?.next?.next = Node(4)
        A.next?.next?.next?.next = Node(5)
        print(A)
    }
    func testreverse() {
        
        var A = Node(1)
        A.next = Node(2)
        A.next?.next = Node(3)
        A.next?.next?.next = Node(4)
        A.next?.next?.next?.next = Node(5)
        print("A",A)
        
        var B = reversed.reverse(A)
        print("B",B)
    
    

}
}
