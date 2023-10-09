//
//  16.Permutation.swift
//  HWSCourse
//
//  Created by Salmdo on 7/22/23.
//

import Foundation

//Write a function that prints all possible permutations of a given input string
//Tip: A String permutation is any given rearrangement of its letters, for example "boamtw" is a permutation of "wombat"

func challenge(input: String) {
    var list: [String] = []
    let arr = Array(input)
    for idx in 0..<arr.count {
        let left = idx == 0 ? "" : String(arr[0..<idx])
        let right = idx == input.count - 1 ? "" : String(arr[idx+1..<input.count])
        let char = String(arr[idx])
        print("\(left)\(right)")
        subFunc(char: char, input: "\(left)\(right)", list: &list)
    }
    print("Count: \(list.count)")
    
}

func subFunc(char: String, input: String, list: inout [String]){
    let left = "\(char)\(input)"
    if !list.contains(left) {
        print(left)
        list.append(left)
    }
    
    let arr = Array(input)
    for idx in 0..<arr.count {
        let left = String(arr[0...idx])
        let right = String(arr[idx+1..<input.count])
        let mid = "\(left)\(char)\(right)"
        if !list.contains(mid) {
            print(mid)
            list.append(mid)
        }
    }
    
    let right = "\(input)\(char)"
    if !list.contains(right) {
        print(right)
        list.append(right)
    }
}

//challenge(input: "a")//"a"
//challenge(input: "ab")//"ab", "ba"
//challenge(input: "abc")//"abc1", "acb1", "cab1","bac1","bca1","cba"
//challenge(input: "wombat")//720 permutations

