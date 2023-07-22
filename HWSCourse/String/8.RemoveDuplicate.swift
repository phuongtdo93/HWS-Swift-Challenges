//
//  8.RemoveDuplicate.swift
//  HWSCourse
//
//  Created by Salmdo on 7/22/23.
//

import Foundation

func removeDuplicate(input: String) -> String {
    input.reduce("") { $0.contains($1) ? $0 : "\($0)\($1)"}
}

//removeDuplicate(input: "wombat")//"wombat"
//removeDuplicate(input: "hello")//"helo"
//removeDuplicate(input: "Mississippi")//"Misp"

