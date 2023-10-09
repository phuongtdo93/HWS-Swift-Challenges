//
//  RunLengthEncode.swift
//  HWSCourse
//
//  Created by Salmdo on 7/22/23.
//

import Foundation

// Write a functuon that accepts a string as input, then returns how often each letter is repeated in a single run, taking case into account
//Tips: This approach is used a simple lossless compression technique called run-length encoding

func runLengthEncode(input: String) -> String {
    guard var firstLetter = input.first else { return "" }
    var returnString = ""
    
    var currentLetter = firstLetter
    var count = 0
    for i in input {
        if i == currentLetter {
            count += 1
        } else {
            returnString.append("\(currentLetter)\(count)")
            count = 1
            currentLetter = i
        }
    }
    returnString.append("\(currentLetter)\(count)")
    return returnString
}

//runLengthEncode(input: "")//
//runLengthEncode(input: "aabbcc")//a2b2c2
//runLengthEncode(input: "aabbaaccc")//a2b2a2c3
//runLengthEncode(input: "aaAAaa")//a2A2a2
