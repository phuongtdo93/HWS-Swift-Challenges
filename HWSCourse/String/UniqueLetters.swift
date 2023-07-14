//
//  UniqueLetters.swift
//  HWSCourse
//
//  Created by Salmdo on 6/1/23.
//

import Foundation

func uniqueLetters(input: String) -> Bool {
    let mySet = Set(input.lowercased())
    return input.count == mySet.count
}
