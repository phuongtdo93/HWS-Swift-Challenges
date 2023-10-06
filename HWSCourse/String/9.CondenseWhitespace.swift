//
//  CondenseWhitespace.swift
//  HWSCourse
//
//  Created by Salmdo on 7/14/23.
//

import Foundation

//Condense whitespace
//Write a function that returns a string with any consecutive spaces replaced with a single space
func condenseWhitespace(input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression)}

//condenseWhitespace(input: "A  a   b   c")//a b c
//condenseWhitespace(input: "    a")// a
//condenseWhitespace(input: "abc")//abc
