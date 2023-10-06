//
//  41.SortStringByLength.swift
//  HWSCourse
//
//  Created by Salmdo on 7/26/23.
//

import Foundation

extension Collection where Iterator.Element == String {
    func sortStringByLength() -> [Iterator.Element] {
        return self.sorted { $0.count > $1.count }
    }
}
//["a", "abc", "ab"].sortStringByLength()//abc, ab, a
//["paul", "taylor", "adele"].sortStringByLength()//taylor, adele, paul
//[String]().sortStringByLength()//abc, ab, a
