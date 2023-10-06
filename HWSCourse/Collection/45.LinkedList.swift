//
//  LinkedList.swift
//  HWSCourse
//
//  Created by Salmdo on 7/29/23.
//

import Foundation

class LinkedListNode<T>{
    var value: T
    var next: LinkedListNode?
    
    init(value: T) {
        self.value = value
    }
}

class LinkedList<T>{
    var start: LinkedListNode<T>?
    
    func printNode(){
        var currentNode = start
        
        while let node = currentNode {
            print(node.value, terminator: " ")
            currentNode = node.next
        }
    }
}

//var list = LinkedList<Character>()
//var previousNode: LinkedListNode<Character>? = nil
//
//for letter in "abcdefghijklmnopqrstuvwxyz" {
//    let node =  LinkedListNode(value: letter)
//    
//    if let predecessor = previousNode {
//        predecessor.next = node
//    } else {
//        list.start = node
//    }
//    previousNode = node
//}
//
////list.printNode()
