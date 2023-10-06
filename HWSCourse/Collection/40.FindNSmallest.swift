//
//  FindNSmallest.swift
//  HWSCourse
//
//  Created by Salmdo on 7/26/23.
//

import Foundation

extension Collection where Iterator.Element: Comparable {
    func findNSmallest(count: Int) -> [Iterator.Element] {
        Array(self.sorted().prefix(count))
    }
}

//[1,2,3,4].findNSmallest(count: 3) //1,2,3
//["q", "f", "k"].findNSmallest(count: 10)//f,k,q
//[256, 16].findNSmallest(count: 3)//16, 256
//[String]().findNSmallest(count: 3) // []
