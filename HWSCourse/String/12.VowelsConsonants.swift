//
//  VowelsConsonants.swift
//  HWSCourse
//
//  Created by Salmdo on 7/19/23.
//

import Foundation

func vowelsConsonants(input: String) -> (Vowels: Int, Consonants: Int) {
    let vowelsString = "aeiou"
    var vowelsCount = input.lowercased().reduce(0) {vowelsString.lowercased().contains($1) ? $0 + 1 : $0 }
    var consonants = input.lowercased().reduce(0) {
        $1 >= "b" && $1 <= "z" && !vowelsString.lowercased().contains($1) ? $0 + 1 : $0 }
    return (Vowels: vowelsCount, Consonants: consonants)
}

//vowelsConsonants(input: "Swift Coding Challenges")//Vowels: 6, Consonants: 15
//vowelsConsonants(input: "Mississippi")//Vowels: 4, Consonants: 7

