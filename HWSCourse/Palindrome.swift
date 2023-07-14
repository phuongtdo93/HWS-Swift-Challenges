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
