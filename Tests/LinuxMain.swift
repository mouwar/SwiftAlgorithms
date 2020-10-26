import XCTest

import SwiftAlgorithmsTests

var tests = [XCTestCaseEntry]()
tests += UnionFindTests.allTests()
tests += LinkedListTests.allTests()
tests += StackTests.allTests()
tests += QueueTests.allTests()
tests += SortingTests.allTests()
XCTMain(tests)
