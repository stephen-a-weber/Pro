//
//  LinkedTests.swift
//  LinkedTests
//
//  Created by stephen weber on 5/17/22.
//

import XCTest
@testable import Linked
var node : Node!
var solution : Solution!
var Stack : MaximumStack!
class LinkedTests: XCTestCase {

    override func setUpWithError() throws {
        
       solution = Solution()
    Stack = MaximumStack()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testNode() {
        
       let T = Node(7)
        T.next = Node(4)
        T.next?.next = Node(3)
        
        let R = Node(8)
        R.next = Node(3)
        R.next?.next = Node(9)
        
        print(T)
        print(R)
       let P =  solution.add(T,R)
       print(P)
        
        
        print("347 + 938 = 1285")
    }
    
    func testreverse() {
        let T = Node(7)
        T.next = Node(4)
        T.next?.next = Node(3)
        T.next?.next?.next = Node(2)
        print(T)
        let P = solution.reverseNode(T)
       print(P)
    }
    
    
    
    func testlength(){
        let T = Node(7)
        T.next = Node(4)
        T.next?.next = Node(3)
        T.next?.next?.next = Node(2)
        let P = solution.length(T)
        XCTAssertEqual(P,4)
        print(T)
        print(P)
         
    }
    
    
    func testForwardNodes(){
        //987 + 765 =  1752
        let T = Node(9)
        T.next = Node(8)
        T.next?.next = Node(7)
        
        let R = Node(7)
        R.next = Node(6)
        R.next?.next = Node(5)
        
        print(T)
        print("+")
        print(R)
        
        let P = solution.trueAdd(T,R)
        print(P)
        
    }
    
    func testSTACKMAXIMUM() {
        
        Stack.push(1)
        Stack.push(4)
        Stack.push(19)
        Stack.push(5)
        Stack.push(11)
        
        let P = Stack.pop()
        print("The top is ",P.0," and the max is ",P.1, " and the min is ", P.2)
        XCTAssertEqual(P.0,11)
        XCTAssertEqual(P.1,19)
              XCTAssertEqual(P.2,1)
        
        XCTAssertEqual(Stack.min(),1)
        XCTAssertEqual(Stack.max(),19)
    }
    
    
    
    
}
