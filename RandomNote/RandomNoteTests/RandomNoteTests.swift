//
//  RandomNoteTests.swift
//  RandomNoteTests
//
//  Created by stephen weber on 5/11/22.
//

import XCTest
@testable import RandomNote

class RandomNoteTests: XCTestCase {
    var randsom: Randsom!
    override func setUpWithError() throws {
        randsom = Randsom()
        
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

    func testIamACriminalSpeller() {
        let randsomLETTERS = ["A","B","C","D","E","F"]
        XCTAssertEqual(randsom.randsomLetters,randsomLETTERS)
        XCTAssertEqual(randsom.canSpell(letters:"A") ,true)
        XCTAssertEqual(randsom.canSpell(letters:"B"),true)
        XCTAssertEqual(randsom.canSpell(letters:"BED"),true)
        XCTAssertEqual(randsom.canSpell(letters:"CAT"),false)
        XCTAssertEqual(randsom.canSpell(letters:"ABAD"),false)
        XCTAssertEqual(randsom.canSpell(letters:"ACCBDEF"),false)
    }
}
