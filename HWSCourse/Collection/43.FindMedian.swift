//
//  43.FindMedian.swift
//  HWSCourse
//
//  Created by Salmdo on 7/26/23.
//

import Foundation

extension Collection where Iterator.Element == Int {
    func findMedian() -> Float? {
        if count == 0 { return nil }
        
        let mid = count/2
        let sortedList = self.sorted()
        
        if count%2 != 0 {
            return Float(sortedList[mid])
        } else {
            return Float((sortedList[mid] + sortedList[mid-1]))/2
        }
    }
}
//[1,2,3].findMedian()//2
//[1,2,9].findMedian()//2
//[1,3,5,7,9].findMedian()//5
//[1,2,3,4].findMedian()//2.5
//[Int]().findMedian()//nil
