//
//  20.CustomPow.swift
//  HWSCourse
//
//  Created by Salmdo on 7/23/23.
//

import Foundation

//Create a function that accepts positive 2 intergers, and raises the first to ther power of the second

func customPow(num: Int, pow: Int) -> Int {
    guard num > 0, pow > 0 else { return 0 }
    if pow == 0 { return 1 }
    if pow == 1 {return num }
    return customPow(num: num, pow: pow-1)*num
}
//customPow(num: 4, pow: 3)//64
//customPow(num: 2, pow: 8)//256
