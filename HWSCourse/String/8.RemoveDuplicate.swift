//
//  8.RemoveDuplicate.swift
//  HWSCourse
//
//  Created by Salmdo on 7/22/23.
//

import Foundation

//Write a function accepts a string as its input, and returns the sae string just with duplicate letters removed 
func removeDuplicate(input: String) -> String {
    input.reduce("") { $0.contains($1) ? $0 : "\($0)\($1)"}
}

//removeDuplicate(input: "wombat")//"wombat"
//removeDuplicate(input: "hello")//"helo"
//removeDuplicate(input: "Mississippi")//"Misp"

