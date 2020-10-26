//
//  BinarySearchTests.swift
//  Created by hg on 18/10/2020.
//

import XCTest
@testable import SwiftAlgorithms

final class BinarySearchTests: XCTestCase {
    
    var binarySearch: BinarySearch!
    
    override func setUp() {
        super.setUp()
        binarySearch = BinarySearch()
    }
    
    override func tearDown() {
        super.tearDown()
        binarySearch = nil
    }
    
    func testSearchEmpty() {
        let array = [Int]()
        let index = binarySearch.indexOf(array, 1)
        XCTAssertNil(index)
    }
    
    func testSearch() {
        let array = [1,2,3,4,5,6,7,8,9]
        let index = binarySearch.indexOf(array, 5)
        XCTAssertEqual(index, 4)
    }
    
    static var allTests = [
        ("testSearchEmpty", testSearchEmpty),
        ("testSearch", testSearch)
    ]
}
