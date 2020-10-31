//
//  LinkedList.swift
//  Created by hg on 11/10/2020.
//

import Foundation

public protocol LinkedList {
    
    associatedtype T
    
    func first() -> T?
    func last() -> T?
    func prepend(_ element: T)
    func append(_ element: T)
    func removeFirst() -> T?
    func isEmpty() -> Bool
    func size() -> Int
    
}

