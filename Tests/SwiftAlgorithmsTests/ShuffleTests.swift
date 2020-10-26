//
//  ShuffleTests.swift
//  Created by hg on 15/10/2020.
//

import XCTest
@testable import SwiftAlgorithms

final class ShuffleTests: XCTestCase {
    
    var shuffle: Shuffle!
    
    override func setUp() {
        super.setUp()
        shuffle = KnuthShuffle()
    }
    
    override func tearDown() {
        super.tearDown()
        shuffle = nil
    }
    
    func testShuffleEmpty() {
        var array = [Int]()
        shuffle.shuffle(&array)
    }
    
    func testShuffle() {
        var array = [1,2,3,4,5,6,7,8,9]
        shuffle.shuffle(&array)
    }
    
    static var allTests = [
        ("testShuffleEmpty", testShuffleEmpty),
        ("testShuffle", testShuffle)
    ]
}
