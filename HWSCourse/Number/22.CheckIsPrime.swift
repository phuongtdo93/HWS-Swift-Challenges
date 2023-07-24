//
//  22.CheckIsPrime.swift
//  HWSCourse
//
//  Created by Salmdo on 7/23/23.
//

import Foundation


func checkIsPrime(num: Int) -> Bool {
    if num < 1 { return false }
    
    let last = sqrt(Double(num))
    for i in 2...Int(last) {
        if num % i == 0 {
            return false
        }
    }
    return true
}

//
//checkIsPrime(num: 7)//True
//checkIsPrime(num: 13)//true
//checkIsPrime(num: 4)//false
//checkIsPrime(num: 9)//false
//checkIsPrime(num: 16777259)//true
