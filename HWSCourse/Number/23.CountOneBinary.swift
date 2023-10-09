//
//  23.CountOneBinary.swift
//  HWSCourse
//
//  Created by Salmdo on 7/23/23.
//

import Foundation

//Create a function that accepts any positive integer and returns the next highest and next lowest number that has the same number of ones in its binary representation. If either number is not possible, return nil for it.

func countOneBinary(num: Int) -> (nextHighest: Int?, nextLowest: Int?) {
    
    func count1s(num: Int) -> Int {
        let target = String(num, radix: 2)
        return target.filter { $0 == "1"}.count
    }
    
    let targetOnes = count1s(num: num)
    
    var highest: Int? = nil
    var lowest: Int? = nil
    
    for i in num + 1 ... Int.max {
        let currentOnes = count1s(num: i)
        if targetOnes == currentOnes {
            highest = i
            break
        }
    }
    
    for i in (0..<num).reversed() {
        let currentOnes = count1s(num: i)
        if targetOnes == currentOnes {
            lowest = i
            break
        }
    }
    
    return (nextHighest: highest, nextLowest: lowest)
}

//countOneBinary(num: 12)//1100 => (nextHighest: 17-10001, nextLowest: 10-1010)
//countOneBinary(num: 28)//11100 => (nextHighest: 35-100011, nextLowest: 26-11010)
