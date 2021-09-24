//
//  706. 设计哈希映射.swift
//  leetCode
//
//  Created by clt on 2021/8/27.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation


class MyHashMap {

    private var base:Int
    private var buckets:[Bucket]
    
    init() {
        base = 3612
        buckets = Array.init(repeating: Bucket(), count: base - 1)
    }
    
    func put(_ key: Int, _ value: Int) {
        buckets[hash(key)].put(key, value)
    }

    func get(_ key: Int) -> Int {
        
      return buckets[hash(key)].get(key)
    }
    
    func remove(_ key: Int) {
        buckets[hash(key)].remove(key)
    }
    
    private func hash(_ key : Int) -> Int {
        return key % base
    }
    
    
    class Bucket {
        
        private let head = Pair(-1,-1)
        
        
        func put(_ key: Int, _ value: Int) {
            var next = head.next
            while next != nil {
                if next?.key == key {
                    next?.value = value
                    return
                }
                next = next?.next
            }
            let newPair = Pair(key,value)
            newPair.next = head.next
            head.next = newPair
        }

        func get(_ key: Int) -> Int {
            
            var next = head.next
            
            while next != nil {
                if next?.key == key {
                    return next!.value
                }
                next = next?.next
            }
            
            return -1
        }
        
        func remove(_ key: Int) {
            
            var pre:Pair? = head
            var cur = head.next
            while cur != nil {
                if cur?.key == key {
                    pre?.next = cur?.next
                    return
                }
                pre = cur
                cur = cur?.next
            }
        }
        
        
        
        class Pair {
            let key:Int
            var value:Int
            var next:Pair?
            
            init(_ key:Int , _ value:Int) {
                self.key = key
                self.value = value
            }
            
        }
        
    }
    
    
}
