//
//  21.SwapNumber.swift
//  HWSCourse
//
//  Created by Salmdo on 7/23/23.
//

import Foundation
//Swap 2 positive variable intergers, a and b, without using a temporary variable
func swapNumber(a: inout Int, b: inout Int) {
    swap(&a, &b)
}

//var a = 10
//var b = 30
//swapNumber(a: &a, b: &b)
//print(a)
//print(b)
