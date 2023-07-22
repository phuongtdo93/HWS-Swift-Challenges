//
//  Pangrams.swift
//  HWSCourse
//
//  Created by Salmdo on 7/14/23.
//

import Foundation

func pangrams(input: String) -> Bool {
    var myStr = "qwertyuiopasdfghjklzxcvbnm"
    for i in myStr {
        if input.lowercased().contains(i) {
            myStr.remove(at: myStr.firstIndex(of: i)!)
        }
    }
    return myStr.count == 0
}

func pangrams1(input: String) -> Bool {
    let mySet = Set(input.lowercased())
    let letters = mySet.filter{ $0 >= "a" && $0 <= "z"}
    
    return letters.count == 26
}

//pangrams(input: "The quick brown fox jumps over the lazy dog")//true
//pangrams(input: "The quick brown fox jumped over the lazy dog")//false
