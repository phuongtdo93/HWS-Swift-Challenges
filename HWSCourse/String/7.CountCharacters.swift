//
//  7.CountCharacters.swift
//  HWSCourse
//
//  Created by Salmdo on 7/22/23.
//

import Foundation

//Write a function that accepts a string, and returns how many times a specific charater appears, taking case into account
func countCharacters(input: String, char: String) -> Int {
    return input.lowercased().ranges(of: char.lowercased()).count
}
//countCharacters(input: "The rain in Spain", char: "a")//2
//countCharacters(input: "Mississipi", char: "i" )//4
//countCharacters(input: "Hacking with Swift", char: "i")//3
