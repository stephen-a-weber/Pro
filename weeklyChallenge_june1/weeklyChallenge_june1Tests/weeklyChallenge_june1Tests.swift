//
//  weeklyChallenge_june1Tests.swift
//  weeklyChallenge_june1Tests
//
//  Created by stephen weber on 6/1/22.
//

import XCTest
@testable import weeklyChallenge_june1

class weeklyChallenge_june1Tests: XCTestCase {
    var hexCode : HexCode!
    var prime : Prime!
    var java : Java!
    var part : Partition!
    var oddEven : OddEven!
    var swap : Swap!
    override func setUpWithError() throws {
        hexCode = HexCode()
        prime = Prime()
        java = Java()
        part = Partition()
        oddEven = OddEven()
        swap = Swap()
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

    
    func testHexCodeCreate() {
        XCTAssertTrue(hexCode.isValidHexCode(s: "#123456"))
        XCTAssertTrue(hexCode.isValidHexCode(s: "#1AAA56"))
        XCTAssertFalse(hexCode.isValidHexCode(s: "#12345P"))
        XCTAssertFalse(hexCode.isValidHexCode(s: "#12345P1"))
        XCTAssertTrue(hexCode.isValidHexCode(s: "#eaecee"))
    }

    
    
    func testNextPrimeCreate() {
        XCTAssertEqual(prime.nextPrime(r: 0),2)
        XCTAssertEqual(prime.nextPrime(r: 22),23)
    }
    
    
    func testSortJava() {
        var d = [515,341,98,44,211]
        var e = [155,134,89,44,112]
        XCTAssertEqual(java.reOrder(r: d, order: "asc"),e)
        var t = [63251,78221]
        var tt = [12356,12278]
        var ttt = [65321,87221]
        XCTAssertEqual(java.reOrder(r:t,order:"asc"),tt)
        XCTAssertEqual(java.reOrder(r:t,order:"desc"),ttt)
    }
    
    
    func testPartMake() {
        XCTAssertTrue(part.canPartition(r: [2,8,4,1]))
        XCTAssertTrue(part.canPartition(r: [-1,-20,5,-1,-2,2]))
        XCTAssertFalse(part.canPartition(r: [-1,-10,1,-2,20]))
    }
    
    func testOddEvenMake() {
        
        XCTAssertEqual(oddEven.oddishOrEvenish(n:121),"Evenish")
        XCTAssertEqual(oddEven.oddishOrEvenish(n:373),"Oddish")
        XCTAssertEqual(oddEven.oddishOrEvenish(n:4433),"Evenish")
    }
    
    func testswapCreate() {
        XCTAssertEqual (swap.doubleSwap(s: "128 895 556 788 999", a: "8", b: "9"    ),"129 985 556 799 888")
        XCTAssertEqual (swap.doubleSwap(s:"aabbccc",a:"a",b:"b"),"bbaaccc")
    }
}
