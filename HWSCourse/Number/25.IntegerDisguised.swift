//
//  25.IntegerDisguised.swift
//  HWSCourse
//
//  Created by Salmdo on 7/23/23.
//

import Foundation
//Write a function that accepts a string and returns true if it contains only numbers, i.e. the digits through 9

func integerDisguised(input: String) -> Bool {
    return UInt(input) != nil
}

func integerDisguised1(input: String) -> Bool {
     let countNum = input.filter { $0 >= "0" && $0 <= "9" }
    return input.count == countNum.count
}

//integerDisguised(input: "010101")//true
//integerDisguised(input: "123454")//true
//integerDisguised(input: "0223372036854775808")//true
//integerDisguised(input: "1.4")//false
