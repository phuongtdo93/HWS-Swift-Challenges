//
//  LongestPrefix.swift
//  HWSCourse
//
//  Created by Salmdo on 7/22/23.
//

import Foundation


import Foundation

func longestPrefix(input: String) -> String {
    let parts = input.components(separatedBy: " ")
    guard let first = parts.first else { return "" }
    
    var currentChars = ""
    var returnChars = ""
    for char in first {
        currentChars.append(char)
        for part in parts {
            if !part.hasPrefix(currentChars){
                return returnChars
            }
        }
        returnChars = currentChars
    }
    return returnChars
}

//longestPrefix(input: "swift switch swill swim")//swi
//longestPrefix(input: "flip flap flop")//fl


