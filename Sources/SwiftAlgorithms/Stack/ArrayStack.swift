//
//  ArrrayStack.swift
//  Created by hg on 11/10/2020.
//

import Foundation

public class ArrayStack<T>: Stack {
    
    private var elements: [T]
    
    public init() {
        elements = [T]()
    }
    
    public func push(_ element: T) {
        elements.append(element)
    }
    
    public func pop() -> T? {
        return elements.popLast()
    }
    
    public func peek() -> T? {
        return elements.last
    }
    
    public func isEmpty() -> Bool {
        return elements.isEmpty
    }
    
    public func size() -> Int {
        return elements.count
    }
    
}
