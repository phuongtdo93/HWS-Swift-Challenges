//
//  28.SubtractWithoutSubtract.swift
//  HWSCourse
//
//  Created by Salmdo on 7/24/23.
//

import Foundation

//Create a function that substracts one positive integer from another, without using -
func subtractWithoutSubtract(subtract: Int, from: Int) -> UInt {
    print (~subtract)
    print(~subtract + 1)
    print (from + (~subtract + 1))
    return 1
}

//subtractWithoutSubtract(subtract: 5, from: 9)//4
//subtractWithoutSubtract(subtract: 10, from: 30)//20
