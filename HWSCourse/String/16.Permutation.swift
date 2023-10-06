//
//  16.Permutation.swift
//  HWSCourse
//
//  Created by Salmdo on 7/22/23.
//

import Foundation


//func challenge(input: String) -> [String] {
//    
//}

func subFunc(leftStr: String, rightStr: String) -> [String] {
    if rightStr.count == 0 { return [String(leftStr.reversed())] }
    var returnList = ["\(leftStr)\(rightStr)"]
    
    let rightStrArr = Array(rightStr)
    for i in 0..<rightStr.count {
        var lStr = rightStrArr[0..<i]
        var rStr = rightStrArr[i..<rightStr.count]
        returnList.append("\(lStr)\(leftStr)\(rStr)")
    }
    returnList.append("\(rightStr)\(leftStr)")
    return returnList
}

//challenge(input: "a")//"a"
//challenge(input: "ab")//"ab", "ba"
//challenge(input: "abc")//"abc", "acb", "cab","bac","bca","cba"
//challenge(input: "wombat")//720 permutations
