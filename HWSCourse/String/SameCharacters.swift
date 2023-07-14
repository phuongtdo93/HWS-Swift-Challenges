//
//  SameCharacters.swift
//  HWSCourse
//
//  Created by Salmdo on 6/1/23.
//

import Foundation

func sameCharacters(input1: String, input2: String) -> Bool {
    if input1.count != input2.count {
        return false
    }
    
    return input1.sorted() == input2.sorted()
}
