//
//  MergeSort.swift
//  HWSCourse
//
//  Created by Salmdo on 5/30/23.
//

import Foundation

func mergeSort(a1: [Int], a2:[Int]) -> [Int] {
                                            //Input: 2 sorted array a1 and a2
                                            //Output: an array include 2 arrays withcorrect order
    var res: [Int] = []                     // res <- [Int]
    
    var i = 0, j = 0                        // i <- 0, j <- 0
    while(i < a1.count && j < a2.count) {   //while (i < a1.count && j < a1.count)
        if a1[i] < a2[j] {                      //if a1[i] < a2[j] then
            res.append(a1[i])                       // res.add(a1[i])
            i+=1                                    // i <- i + 1
        } else {                                //else
            res.append(a2[j])                       // res.add(a2[j])
            j+=1                                    // j <- j + 1
        }
    }
    for temp in i..<a1.count {              //for temp <- i to a1.count do
        res.append(a1[temp])                    //res.add(a1[temp])
    }
    for temp in j..<a2.count {              //for temp <- j to a2.count do
        res.append(a2[temp])                    //res.add(a2[temp]
    }
    
    return res                              //return res
}
