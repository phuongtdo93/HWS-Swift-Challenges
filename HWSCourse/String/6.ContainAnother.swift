//
//  ContainAnother.swift
//  HWSCourse
//
//  Created by Salmdo on 7/13/23.
//

import Foundation

extension String {
    func fuzzyContain(_ input: String) -> Bool {
        return !self.lowercased().ranges(of: input.lowercased()).isEmpty
//        return self.range(of: input, options: .caseInsensitive) != nil
    }
}

//Test cases
//"Hello, world".fuzzyContain("Hello") //true
//"Hello, world".fuzzyContain("WORLD") //true
//"Hello, world".fuzzyContain("No")    //false
