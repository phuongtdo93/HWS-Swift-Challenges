//
//  VowelsConsonants.swift
//  HWSCourse
//
//  Created by Salmdo on 7/19/23.
//

import Foundation

//Given a string in English, return a tuple containing the number of vowels and consonants
//Vowels are a, e, i, u, o. consonants are the rest one
func vowelsConsonants(input: String) -> (Vowels: Int, Consonants: Int) {
    let vowelsString = "aeiou"
    var vowelsCount = input.lowercased().reduce(0) {vowelsString.lowercased().contains($1) ? $0 + 1 : $0 }
    var consonants = input.lowercased().reduce(0) {
        $1 >= "b" && $1 <= "z" && !vowelsString.lowercased().contains($1) ? $0 + 1 : $0 }
    return (Vowels: vowelsCount, Consonants: consonants)
}

func vowelsConsonants2(input: String) -> (Vowels: Int, Consonants: Int) {
    let letters = "aeuio"
    let inputStr = input.filter { $0 != " " }
    let countVowels = inputStr.lowercased().filter { letters.contains($0) }.count

    return (countVowels, inputStr.count - countVowels)
}

//vowelsConsonants(input: "Swift Coding Challenges")//Vowels: 6, Consonants: 15
//vowelsConsonants(input: "Mississippi")//Vowels: 4, Consonants: 7

