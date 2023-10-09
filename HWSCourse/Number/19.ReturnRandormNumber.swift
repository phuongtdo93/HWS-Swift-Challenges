//
//  19.ReturnRandormNumber.swift
//  HWSCourse
//
//  Created by Salmdo on 7/23/23.
//

import Foundation
//Write a function that accepts prositive minumun and maximun intergers, and returns a random number between those two bounds, inclusive
func returnRandormNumber(min: Int, max: Int) -> Int {
    Int.random(in: min...max)
    
}
//returnRandormNumber(min: 1, max: 5)
//returnRandormNumber(min: 8, max: 10)
//returnRandormNumber(min: 12, max: 12)
//returnRandormNumber(min: 12, max: 18)
