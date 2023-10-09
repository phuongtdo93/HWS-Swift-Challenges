//
//  24.BinaryReverse.swift
//  HWSCourse
//
//  Created by Salmdo on 7/23/23.
//

import Foundation

//Create a function that accepts an unsigned 8-bit interger and returns its binary reverse padded so that it holds precisely eight binary digits.
//Tip: when you get the binary representation of a number, Swift will always use as few bits as possible - make sure you pad to eight binary digits before reversing

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
