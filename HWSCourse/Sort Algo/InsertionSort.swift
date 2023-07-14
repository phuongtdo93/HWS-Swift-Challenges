//
//  InsertionSort.swift
//  HWSCourse
//
//  Created by Salmdo on 6/12/23.
//

import Foundation

extension Array where Element : Comparable {
    func insertionSort() -> [Element] {
        var valReturn = self
        
        var firstIdx = 0
        repeat {
            var smallIdx = valReturn[count - 1]
            for i in count-2 ... 0 {
                if valReturn[i] > valReturn[smallIdx] {
                    valReturn.swapAt(<#T##i: Int##Int#>, <#T##j: Int##Int#>)
                }
            }
            
        } while firstIdx < count - 1
        
        return valReturn
    }
}
