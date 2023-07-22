//
//  FizzBuzz.swift
//  HWSCourse
//
//  Created by Salmdo on 7/23/23.
//

import Foundation

func fizzBuzz() {
    for num in 1...100 {
        var res : [String] = []
        if num % 3 == 0 {
            res.append("Fizz")
        }
        if num % 5 == 0 {
            res.append("Buzz")
        }
        if res.count == 0 {
            res.append("\(num)")
        }
        print (res.joined(separator: " "))
    }
    
}
//fizzBuzz()

