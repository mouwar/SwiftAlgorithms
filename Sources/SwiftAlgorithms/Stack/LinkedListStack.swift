//
//  LinkedListStack.swift
//  Created by hg on 11/10/2020.
//

import Foundation

public class LinkedListStack<T>: Stack {
 
    private var elements: LinkedListImpl<T>
    
    public init() {
        elements = LinkedListImpl<T>()
    }
    
    public func push(_ element: T) {
        elements.prepend(element)
    }
    
    public func pop() -> T? {
        return elements.removeFirst()
    }
    
    public func peek() -> T? {
        return elements.first()
    }
    
    public func isEmpty() -> Bool {
        return elements.isEmpty()
    }
    
    public func size() -> Int {
        return elements.size()
    }
    
}
