//
//  ContainAnother.swift
//  HWSCourse
//
//  Created by Salmdo on 7/13/23.
//

import Foundation

//Does ons string contain another
//Write your own version of the contains() method on String that ignores letter case, and without using the existing contains() method
extension String {
    func fuzzyContain(_ input: String) -> Bool {
        return !self.lowercased().ranges(of: input.lowercased()).isEmpty
//        return self.range(of: input, options: .caseInsensitive) != nil
    }
}

//Note: Do not use contain function. Test cases
//"Hello, world".fuzzyContain("Hello") //true
//"Hello, world".fuzzyContain("WORLD") //true
//"Hello, world".fuzzyContain("No")    //false
