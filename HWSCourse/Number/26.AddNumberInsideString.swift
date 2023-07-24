//
//  26.AddNumberInsideString.swift
//  HWSCourse
//
//  Created by Salmdo on 7/24/23.
//

import Foundation

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

//addNumberInsideString(input: "a1b2c3")//6
//addNumberInsideString(input: "a10b20c30")//60
//addNumberInsideString(input: "a8buy")//8
