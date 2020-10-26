//
//  LinkedListTests.swift
//  Created by hg on 11/10/2020.
//

import XCTest
@testable import SwiftAlgorithms

final class LinkedListTests: XCTestCase {
    
    var linkedList: LinkedListImpl<Int>!
    
    override func setUp() {
        super.setUp()
        linkedList = LinkedListImpl<Int>()
    }
    
    override func tearDown() {
        super.tearDown()
        linkedList = nil
    }
    
    func testRemoveEmpty() {
        let element = linkedList.removeFirst()
        XCTAssertNil(element)
    }
    
    func testFirst() {
        XCTAssertNil(linkedList.first())
        linkedList.append(1)
        XCTAssertEqual(linkedList.first(), 1)
        linkedList.append(2)
        XCTAssertEqual(linkedList.first(), 1)
        linkedList.prepend(4)
        XCTAssertEqual(linkedList.first(), 4)
    }
    
    func testLast() {
        XCTAssertNil(linkedList.last())
        linkedList.append(1)
        XCTAssertEqual(linkedList.last(), 1)
        linkedList.prepend(2)
        XCTAssertEqual(linkedList.last(), 1)
        linkedList.append(4)
        XCTAssertEqual(linkedList.last(), 4)
    }
    
    func testAppend() {
        linkedList.append(2)
        linkedList.append(1)
        let element = linkedList.removeFirst()
        XCTAssertEqual(element, 2)
    }
    
    func testPrepend() {
        linkedList.prepend(2)
        linkedList.prepend(1)
        let element = linkedList.removeFirst()
        XCTAssertEqual(element, 1)
    }
    
    func testIsEmpty() {
        XCTAssertTrue(linkedList.isEmpty())
        linkedList.append(1)
        XCTAssertFalse(linkedList.isEmpty())
        _ = linkedList.removeFirst()
        XCTAssertTrue(linkedList.isEmpty())
    }
    
    func testSize() {
        XCTAssertEqual(linkedList.size(), 0)
        linkedList.append(1)
        XCTAssertEqual(linkedList.size(), 1)
        linkedList.prepend(2)
        XCTAssertEqual(linkedList.size(), 2)
        _ = linkedList.removeFirst()
        XCTAssertEqual(linkedList.size(), 1)
        _ = linkedList.removeFirst()
        XCTAssertEqual(linkedList.size(), 0)
    }

    static var allTests = [
        ("testRemoveEmpty", testRemoveEmpty),
        ("testAppend", testAppend),
        ("testPrepend", testPrepend),
        ("testIsEmpty", testIsEmpty),
        ("testSize", testSize)
    ]
}

