//
//  CountNumber.swift
//  HWSCourse
//
//  Created by Salmdo on 7/26/23.
//

import Foundation


extension Collection where Iterator.Element == Int {
    func countNumber(count: String) -> Int {
        self.reduce(0) { String($1).filter { String($0) == count}.count + $0}
    }
}

//[5, 15, 25, 515].countNumber(count: "5")//5
//[5, 15, 25, 55].countNumber(count: "1")//1
//[555].countNumber(count: "5")//3
//[555].countNumber(count: "1")//0
