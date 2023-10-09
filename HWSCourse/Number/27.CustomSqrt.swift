//
//  27.CustomSqrt.swift
//  HWSCourse
//
//  Created by Salmdo on 7/24/23.
//

import Foundation

//Write a function that returns the square root of a positive integer, rounded down to the nearest integer, without using sqrt()
func customSqrt(num: Int) -> Int {
    
    func findNum(num: Int, target: Int) -> Int {
        let powHaftNum = pow(Double(num), Double(2))
       
        if powHaftNum == Double(target)  {
            return num
        }
        if powHaftNum > Double(target) {
            return findNum(num: num/2, target: target)
        }
        if num <= target/2 {
            return num
        }
        return findNum(num: num*3/2, target: target)
    }
    
    return findNum(num: num, target: num)
}


//customSqrt(num: 9)//3
//customSqrt(num: 16777216)//4096
//customSqrt(num: 16)//4
//customSqrt(num: 15)//3
 
