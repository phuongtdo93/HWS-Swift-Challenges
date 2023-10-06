//
//  UniqueLetters.swift
//  HWSCourse
//
//  Created by Salmdo on 6/1/23.
//

import Foundation

//Write a function that accepts a String as its only parametes, and return true if string has only unique letters, taking letter case into account
func uniqueLetters(input: String) -> Bool {
    let mySet = Set(input.lowercased())
    return input.count == mySet.count
}

//uniqueLetters(input: "No duplicates")//true
//uniqueLetters(input: "AaBb")//true
//uniqueLetters(input: "Hello")//false
