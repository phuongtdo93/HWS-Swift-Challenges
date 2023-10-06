//
//  42.MissingNumber.swift
//  HWSCourse
//
//  Created by Salmdo on 7/26/23.
//

import Foundation

extension Array where Element == Int {
    func missingNumber() -> [Element] {
        let arrSorted = self.sorted()
        let bigArray = Array(1...100)
        let filtered =  bigArray.filter { !arrSorted.contains($0)}
        return filtered
    }
}

//var test = Array(1...100)
//test.remove(at: 25)
//test.remove(at: 50)
//test.remove(at: 7)
//test.missingNumber()
