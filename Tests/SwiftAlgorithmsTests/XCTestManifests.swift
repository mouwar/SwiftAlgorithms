import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(UnionFindTests.allTests),
        testCase(LinkedListTests.allTests),
        testCase(StackTests.allTests),
        testCase(QueueTests.allTests),
        testCase(SortingTests, allTests)
    ]
}
#endif
