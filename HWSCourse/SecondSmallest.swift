//
//  SecondSmallest.swift
//  HWSCourse
//
//  Created by Salmdo on 6/1/23.
//

import Foundation

func secondSmallest(arr: [Int]?) -> Int {
    guard var arrT = arr, arrT.count > 2 else {
        print("Input is too small")
        return -1
    }
    for i in 0...1 {
        let min = findMinIdx(arr: arrT, i)
        let temp = arrT[i]
        arrT[i] = arrT[min]
        arrT[min] = temp
    }
    return arrT[1]
    
}

func findMinIdx(arr: [Int],_ i: Int) -> Int {
    var min = i
    
    for j in i..<arr.count {
        if arr[j] < arr[min] {
            min = j
        }
    }
    return min
}

