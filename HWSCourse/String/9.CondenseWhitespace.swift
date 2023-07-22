//
//  CondenseWhitespace.swift
//  HWSCourse
//
//  Created by Salmdo on 7/14/23.
//

import Foundation

func condenseWhitespace(input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression)}

//condenseWhitespace(input: "A  a   b   c")//a b c
//condenseWhitespace(input: "    a")// a
//condenseWhitespace(input: "abc")//abc
