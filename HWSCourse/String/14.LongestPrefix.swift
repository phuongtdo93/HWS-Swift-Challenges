//
//  LongestPrefix.swift
//  HWSCourse
//
//  Created by Salmdo on 7/22/23.
//

import Foundation


import Foundation

//Write a function that accepts a string of words with a similar prefix, separated by spaces, and returns the longest substring that prefixes all words

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

func longestPrefix1(input: String) -> String {
    let list = input.lowercased().components(separatedBy: " ")
    var res = ""

    for i in list.first! {
        var resI = "\(res)\(i)"
        let countNoI = list.filter { !$0.hasPrefix(res) }.count
        if countNoI > 0 { return res }
        else { res = resI }
    }
    return res

}

//longestPrefix(input: "swift switch swill swim")//swi
//longestPrefix(input: "flip flap flop")//fl
//longestPrefix(input: "flip flip flip")//fl


