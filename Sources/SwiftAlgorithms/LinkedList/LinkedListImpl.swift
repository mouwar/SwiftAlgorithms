//
//  LinkedListImpl.swift
//  Created by hg on 11/10/2020.
//

import Foundation

public class LinkedListImpl<T>: LinkedList {

    fileprivate class Node<T> {
        public var element: T
        public var next: Node<T>?
        
        init(_ element: T, next: Node<T>?) {
            self.element = element
            self.next = next
        }
    }
    
    private var count: Int
    fileprivate var firstNode: Node<T>?
    fileprivate var lastNode: Node<T>?
    
    public init() {
        count = 0
    }
    
    public func first() -> T? {
        return firstNode?.element
    }
    
    public func last() -> T? {
        return lastNode?.element
    }
    
    public func prepend(_ element: T) {
        let oldFirst = firstNode
        firstNode = Node<T>(element, next: oldFirst)
        if lastNode == nil { lastNode = firstNode }
        count += 1
    }
    
    public func append(_ element: T) {
        let oldLast = lastNode
        lastNode = Node<T>(element, next: nil)
        if isEmpty() { firstNode = lastNode }
        else { oldLast?.next = lastNode }
        count += 1
    }
    
    public func removeFirst() -> T? {
        if let element = firstNode?.element {
            firstNode = firstNode?.next
            if isEmpty() { lastNode = nil }
            count -= 1
            return element
        }
        
        return nil
    }
    
    public func isEmpty() -> Bool {
        return firstNode == nil
    }
    
    public func size() -> Int {
        return count
    }
    
    
}

public struct LinkedListImplIterator<T>: IteratorProtocol {
    private var node: LinkedListImpl<T>.Node<T>?
    
    init(_ linkedList: LinkedListImpl<T>) {
        self.node = linkedList.firstNode
    }

    public mutating func next() -> T? {
        let element = node?.element
        node = node?.next
        return element
    }
    
}

extension LinkedListImpl: Sequence {
    
    public func makeIterator() -> LinkedListImplIterator<T> {
        return LinkedListImplIterator(self)
    }
    
}
