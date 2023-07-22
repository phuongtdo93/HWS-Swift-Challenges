//
//  3DifferentLetter.swift
//  HWSCourse
//
//  Created by Salmdo on 7/22/23.
//

import Foundation

func threeDifferentLetter(input: String, input1: String) -> Bool {
    guard input.count == input1.count else {
        return false
    }
    
    var count = 4
    let input1Arr = Array(input1.lowercased())
    for (index, char) in input.lowercased().enumerated() {
        if input1Arr[index] != char {
            count -= 1
            if count == 0 {
                return false
            }
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

