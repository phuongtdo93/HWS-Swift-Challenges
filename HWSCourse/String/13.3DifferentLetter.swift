//
//  3DifferentLetter.swift
//  HWSCourse
//
//  Created by Salmdo on 7/22/23.
//

import Foundation

//Write a function that accepts 2 strings, and returns true if they are identical in length but have no more than three different letters, taking case and string order into account
func threeDifferentLetter(input: String, input1: String) -> Bool {
    guard input.count == input1.count else { return false }
            
    let str1 = Array(input1.lowercased())
    var count = 3
    for (idx, item) in input.lowercased().enumerated() {
        if str1[idx] != item {
            count -= 1
            if count < 0 { return false }
        }
    }
    return true
}

//threeDifferentLetter(input: "Clamp", input1: "Cramp")//true
//threeDifferentLetter(input: "Clamp", input1: "Crams")//true
//threeDifferentLetter(input: "Clamp", input1: "Grams")//true
//threeDifferentLetter(input: "Clamp", input1: "Clam")// false
//threeDifferentLetter(input: "Clamp", input1: "Grans")//false
//threeDifferentLetter(input: "Clamp", input1: "maple")//false

