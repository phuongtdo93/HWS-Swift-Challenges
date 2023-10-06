//
//  44.RecreateIndexOf.swift
//  HWSCourse
//
//  Created by Salmdo on 7/26/23.
//

import Foundation

extension Collection where Iterator.Element: Equatable {
    func recreateIndexOf(of: Element) -> Int? {
        for (index, val) in self.enumerated() {
            if val == of {
                return index
            }
        }
        return nil
    }
}
//[1,2,3].recreateIndexOf(of: 1)//0
//[1,2,3].recreateIndexOf(of: 3)//2
//[1,2,3].recreateIndexOf(of: 5)//nil
