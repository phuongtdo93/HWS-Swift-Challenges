//
//  24.BinaryReverse.swift
//  HWSCourse
//
//  Created by Salmdo on 7/23/23.
//

import Foundation

func binaryReverse(num: Int) -> Int? {
    let numString = String(num, radix: 2)
    var numStringNew = String(repeating: "0", count: 8-numString.count) + numString
    
    guard let res = Int(String(numStringNew.reversed()), radix: 2) else { return nil }
    return res
}

//binaryReverse(num: 32)//4
//binaryReverse(num: 41)//148
//binaryReverse(num: 148)//41
//binaryReverse(num: 4)//32
