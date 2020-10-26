//
//  QueueTests.swift
//  Created by hg on 12/10/2020.
//

import Foundation

import XCTest
@testable import SwiftAlgorithms

final class QueueTests: XCTestCase {
    
    var queue: LinkedListQueue<Int>!
    
    override func setUp() {
        super.setUp()
        queue = LinkedListQueue<Int>()
    }
    
    override func tearDown() {
        super.tearDown()
        queue = nil
    }
    
    func testPopEmpty() {
        let element = queue.dequeue()
        XCTAssertNil(element)
    }
    
    func testEnqueueDequeue() {
        queue.enqueue(2)
        queue.enqueue(1)
        var element = queue.dequeue()
        XCTAssertEqual(element, 2)
        element = queue.dequeue()
        XCTAssertEqual(element, 1)
    }
    
    func testPeek() {
        XCTAssertNil(queue.peek())
        queue.enqueue(2)
        XCTAssertEqual(queue.peek(), 2)
        queue.enqueue(3)
        XCTAssertEqual(queue.peek(), 2)
    }
    
    func testIsEmpty() {
        XCTAssertTrue(queue.isEmpty())
        queue.enqueue(1)
        XCTAssertFalse(queue.isEmpty())
        _ = queue.dequeue()
        XCTAssertTrue(queue.isEmpty())
    }
    
    func testSize() {
        XCTAssertEqual(queue.size(), 0)
        queue.enqueue(1)
        XCTAssertEqual(queue.size(), 1)
        queue.enqueue(2)
        XCTAssertEqual(queue.size(), 2)
        _ = queue.dequeue()
        XCTAssertEqual(queue.size(), 1)
        _ = queue.dequeue()
        XCTAssertEqual(queue.size(), 0)
    }

    static var allTests = [
        ("testPopEmpty", testPopEmpty),
        ("testEnqueueDequeue", testEnqueueDequeue),
        ("testPeek", testPeek),
        ("testIsEmpty", testIsEmpty),
        ("testSize", testSize)
    ]
}
