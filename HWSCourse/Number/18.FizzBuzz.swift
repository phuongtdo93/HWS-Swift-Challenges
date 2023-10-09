//
//  FizzBuzz.swift
//  HWSCourse
//
//  Created by Salmdo on 7/23/23.
//

import Foundation

//Write a function that counts from 1 through 100, and prints "Fizz" if the counter is evenly divisible by 3, "Buzz" if it's evenly divisible by 5, "Fizz Buzz" if it's even divisible by three and five, or the counter number for all other cases
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

func fizzBuzz1(){
    for i in 1...100 {
        if i % 3 == 0 {
            if i % 5 == 0 {
                print("Fizz Buzz")
            } else {
                print("Fizz")
            }
        }
        else if i % 5 == 0 {
            print("Buzz")
        } else {
            print("\(i)")
        }
    }
}
//fizzBuzz()

