//
//  RotatedString.swift
//  HWSCourse
//
//  Created by Salmdo on 7/14/23.
//

import Foundation


func rotatedString(input: String, input2: String) -> Bool {
    if input.count != input2.count {
        return false
    }
    
    let str = input + input
    return str.contains(input2)
}

//rotatedString(input: "abcde", input2: "eabcd")//true
//rotatedString(input: "abcde", input2: "cdeab")//true
//rotatedString(input: "abcde", input2: "abced")//false
//rotatedString(input: "abc", input2: "a")//false
