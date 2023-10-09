//
//  17.ReverseWord.swift
//  HWSCourse
//
//  Created by Salmdo on 7/22/23.
//

import Foundation

//Write a function that returns a string with each of its words reversef but in the original order, without using a loop
func reverseWord(input: String) -> String {
    let parts = input.components(separatedBy: " ")
    var arrItem = parts.map { String($0.reversed()) }
    return arrItem.joined(separator: " ")
}

//reverseWord(input: "Swift Coding Challenges")//tfiwS gnidoC segnellahC
//reverseWord(input: "The quick brown fox")//"ehT kciuq nworb xof"
