//
//  SumFound.swift
//  HWSCourse
//
//  Created by Salmdo on 5/30/23.
//

import Foundation

func sumFound(arr: [Int], z: Int) -> Bool {
    if arr.count < 2 {
        return false
    }
    var tempSet: Set<Int> = []
    for i in arr {
        tempSet.insert(z-i)
    }
    for i in tempSet {
        if let _ = arr.firstIndex(of: i){
            if z-i != i {
                return true
            }
        }
    }
    return false
}
