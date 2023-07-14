//
//  Palindrome.swift
//  HWSCourse
//
//  Created by Salmdo on 6/1/23.
//

import Foundation

func palindrome(input: String) -> Bool {
    let reverseStr = input.lowercased().reversed()
    return Array(input.lowercased()) == Array(reverseStr)
}

//Test cases:
//palindrome(input: "rotator")//true
//palindrome(input: "Rats live evil star")//true
//palindrome(input: "Never odd or even")//false
//palindrome(input: "hello, word") //false
