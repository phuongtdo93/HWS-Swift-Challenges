//
//  26.AddNumberInsideString.swift
//  HWSCourse
//
//  Created by Salmdo on 7/24/23.
//

import Foundation

//Given a string that contains both letters and numbers, write a function that pulls out all the numbers then returns their sum

func addNumberInsideString(input: String) -> Int {
    var currentNumber = ""
    var sum = 0
    
    for i in input {
        let letter = String(i)
        
        if Int(letter) != nil {
            currentNumber += letter
        } else {
            sum += Int(currentNumber) ?? 0
            currentNumber = ""
        }
    }
    sum += Int(currentNumber) ?? 0
    return sum
}

func addNumberInsideString1(input: String) -> Int {
    let strInput = input.lowercased().replacingOccurrences(of: "[a-z]", with: " ", options: .regularExpression)
        .replacingOccurrences(of: " +", with: " ", options: .regularExpression).components(separatedBy: " ")
    let reduceRes = strInput.reduce(0) { Int($0) + (Int($1) ?? 0) }
    return reduceRes
}

//addNumberInsideString(input: "a1b2c3")//6
//addNumberInsideString(input: "a10b20c30")//60
//addNumberInsideString(input: "a8buy")//8
//addNumberInsideString(input: "88bu2")//90
