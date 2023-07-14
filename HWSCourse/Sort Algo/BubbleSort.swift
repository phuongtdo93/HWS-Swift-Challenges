//
//  BubbleSort.swift
//  HWSCourse
//
//  Created by Salmdo on 5/31/23.
//

import Foundation

extension Array where Element: Comparable {
    
    func bubbleSortEnhance() -> [Element] {
        guard count > 1 else { return self }

        var valReturn = self
        var highestSortIdx = count

        repeat {
            var lastSwapIdx = 0
            for i in 0 ..< highestSortIdx - 1 {
                let element = valReturn[i]
                let next = valReturn[i+1]

                if element > next {
                    valReturn.swapAt(i, i+1)
                    lastSwapIdx = i + 1
                }
            }
            highestSortIdx = lastSwapIdx
        } while highestSortIdx != 0

        return valReturn
    }
    
    func bubbleSortSimple() -> [Element] {
        guard count > 1 else { return self }

        var returnValue = self
        var swapsMade: Bool

        repeat {
            swapsMade = false

            for idx in 0 ..< returnValue.count - 1 {
                let element = returnValue[idx]
                let next = returnValue[idx + 1]

                if (element > next) {
                    returnValue.swapAt(idx, idx + 1)
                    swapsMade = true
                }
            }
        } while swapsMade == true

        return returnValue
    }
}
