//
//  17.ReverseWord.swift
//  HWSCourse
//
//  Created by Salmdo on 7/22/23.
//

import Foundation

func reverseWord(input: String) -> String {
    let parts = input.components(separatedBy: " ")
    var arrItem = parts.map { String($0.reversed()) }
    return arrItem.joined(separator: " ")
}

//reverseWord(input: "Swift Coding Challenges")//tfiwS gnidoC segnellahC
//reverseWord(input: "The quick brown fox")//"ehT kciuq nworb xof"
