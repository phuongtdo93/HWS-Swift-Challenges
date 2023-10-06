//
//  46.LinkedListMidPoint.swift
//  HWSCourse
//
//  Created by Salmdo on 7/29/23.
//

import Foundation

//class LinkedListNode<T>{
//    var value: T
//    var next: LinkedListNode<T>?
//    
//    init(val: T) {
//        self.value = val
//    }
//}
//
//class LinkedList<T>{
//    var start: LinkedListNode<T>?
//    
//    func getMidPoint() -> LinkedListNode<T> {
//        var slow = start
//        var fast = start
//        
//        while fast != nil && fast?.next != nil {
//            slow = slow?.next
//            fast = fast?.next?.next
//        }
//        return slow!
//    }
//}
//
//var list = LinkedList<Character>()
//var previousNode: LinkedListNode<Character>? = nil
//
//for letter in "1234" {
//    let node =  LinkedListNode(val: letter)
//
//    if let predecessor = previousNode {
//        predecessor.next = node
//    } else {
//        list.start = node
//    }
//    previousNode = node
//}
//
//list.getMidPoint().value
