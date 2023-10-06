//
//  Palindrome.swift
//  HWSCourse
//
//  Created by Salmdo on 6/1/23.
//

import Foundation

//Is a string as palindrome
//Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case
func palindrome(input: String) -> Bool {
    let reverseStr = input.lowercased().reversed()
    return Array(input.lowercased()) == Array(reverseStr)
}

//palindrome(input: "rotator")//true
//palindrome(input: "Rats live evil star")//true
//palindrome(input: "Never odd or even")//false
//palindrome(input: "hello, word") //false
