//
//  SameCharacters.swift
//  HWSCourse
//
//  Created by Salmdo on 6/1/23.
//

import Foundation

//Do 2 strings contain the same characters
//Write a function that accepts 2 String parameters, and returns true if they contain the same characters in any order taking into account letter case
func sameCharacters(input1: String, input2: String) -> Bool {
    let in1 = input1.filter { $0 != " " }
    let in2 = input2.filter { $0 != " " }
    return in1.sorted() == in2.sorted()
}

//sameCharacters(input1: "abca", input2: "abca")//true
//sameCharacters(input1: "abc", input2: "cba")//true
//sameCharacters(input1: "a1 b2", input2: "b 1 a 2")//true
//sameCharacters(input1: "abc", input2: "abca")//false
//sameCharacters(input1: "abc", input2: "Abc")//false
//sameCharacters(input1: "abc", input2: "cbAa")//false
