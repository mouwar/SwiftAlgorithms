//
//  QuickSort.swift
//  Created by hg on 17/10/2020.
//

import Foundation

public class QuickSort: Sort {
    
    public init() {}
    
    public func sort<T: Comparable>(_ array: inout [T]) {
        array.shuffle()
        sort(&array, 0, array.count - 1)
    }
    
    private func sort<T: Comparable>(_ array: inout [T], _ low: Int, _ high: Int) {
        guard high > low else { return }
        let j = partition(&array, low, high)
        sort(&array, low, j - 1)
        sort(&array, j + 1, high)
    }
    
    private func partition<T: Comparable>(_ array: inout [T], _ low: Int, _ high: Int) -> Int {
        var i = low
        var j = high + 1
        
        while true {
            repeat { i += 1 } while array[i] < array[low] && i != high
            repeat { j -= 1 } while array[low] < array[j] && j != low
            if i >= j { break }
            array.swapAt(i, j)
        }
        
        array.swapAt(low, j)
        return j
    }
    
}
