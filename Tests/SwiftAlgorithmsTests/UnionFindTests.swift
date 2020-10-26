//
//  UnionFindTests.swift
//  Created by hg on 26/09/2020.
//

import XCTest
@testable import SwiftAlgorithms

final class UnionFindTests: XCTestCase {
    
    var unionFind: UnionFind!
    
    override func setUp() {
        super.setUp()
        unionFind = try! WeightedQuickUnionUF(length: 10)
    }
    
    override func tearDown() {
        super.tearDown()
        unionFind = nil
    }
    
    func testUnion() {
        try! unionFind.union(0, 5)
        XCTAssertTrue(try! unionFind.connected(0, 5))
        
        try! unionFind.union(6, 1)
        XCTAssertTrue(try! unionFind.connected(6, 1))
        
        try! unionFind.union(0, 1)
        XCTAssertTrue(try! unionFind.connected(5, 6))
        
        try! unionFind.union(8, 3)
        try! unionFind.union(3, 4)
        try! unionFind.union(4, 9)
        XCTAssertFalse(try! unionFind.connected(0, 9))
    }
    
    func testFind() {
        try! unionFind.union(0,5)
        XCTAssertEqual(try! unionFind.find(0), 0)
        try! unionFind.union(2,5)
        XCTAssertEqual(try! unionFind.find(2), 0)
    }
    
    func testComponents() {
        XCTAssertEqual(unionFind.components(), 10)
        try! unionFind.union(0,5)
        XCTAssertEqual(unionFind.components(), 9)
        try! unionFind.union(2,5)
        XCTAssertEqual(unionFind.components(), 8)
        try! unionFind.union(9,3)
        XCTAssertEqual(unionFind.components(), 7)
    }

    static var allTests = [
        ("testUnion", testUnion),
        ("testFind", testFind),
        ("testComponents", testComponents)
    ]
}
