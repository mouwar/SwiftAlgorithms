//
//  StackTests.swift
//  Created by hg on 12/10/2020.
//

import XCTest
@testable import SwiftAlgorithms

final class StackTests: XCTestCase {
    
    var stack: ArrayStack<Int>!
    
    override func setUp() {
        super.setUp()
        stack = ArrayStack<Int>()
    }
    
    override func tearDown() {
        super.tearDown()
        stack = nil
    }
    
    func testPopEmpty() {
        let element = stack.pop()
        XCTAssertNil(element)
    }
    
    func testPushPop() {
        XCTAssertNil(stack.pop())
        stack.push(2)
        stack.push(1)
        XCTAssertEqual(stack.pop(), 1)
        XCTAssertEqual(stack.pop(), 2)
    }
    
    func testPeek() {
        XCTAssertNil(stack.peek())
        stack.push(2)
        XCTAssertEqual(stack.peek(), 2)
        stack.push(3)
        XCTAssertEqual(stack.peek(), 3)
    }
    
    func testIsEmpty() {
        XCTAssertTrue(stack.isEmpty())
        stack.push(1)
        XCTAssertFalse(stack.isEmpty())
        _ = stack.pop()
        XCTAssertTrue(stack.isEmpty())
    }
    
    func testSize() {
        XCTAssertEqual(stack.size(), 0)
        stack.push(1)
        XCTAssertEqual(stack.size(), 1)
        stack.push(2)
        XCTAssertEqual(stack.size(), 2)
        _ = stack.pop()
        XCTAssertEqual(stack.size(), 1)
        _ = stack.pop()
        XCTAssertEqual(stack.size(), 0)
    }

    static var allTests = [
        ("testPopEmpty", testPopEmpty),
        ("testPushPop", testPushPop),
        ("testPeek", testPeek),
        ("testIsEmpty", testIsEmpty),
        ("testSize", testSize)
    ]
}
