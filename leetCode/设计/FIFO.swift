//
//  FIFO.swift
//  leetCode
//
//  Created by clt on 2023/3/13.
//  Copyright © 2023 clt. All rights reserved.
//

import Foundation

/*
 
 FIFO是“先进先出”（First In First Out）的缩写，它是一种常见的数据结构和算法，也是计算机科学中的基本概念之一。FIFO队列是一种数据结构，它的操作符合“先进先出”的原则，即在队列中先进入的元素会先被取出，后进入的元素会后被取出。

 FIFO队列通常用于处理需要按照时间顺序排队处理的任务或事件，例如处理操作系统中的进程请求、网络传输中的数据包、计算机中的打印任务等。在这些场景中，任务或事件需要按照其到达的顺序依次进行处理，因此FIFO队列可以很好地满足这种需求。

 FIFO队列的基本操作包括：入队（enqueue）将元素添加到队列的尾部；出队（dequeue）从队列的头部取出一个元素并将其删除；查看队首元素（peek）返回队列的头部元素，但不删除它。
 
 */


struct FIFO<T> {
    private var array:[T] = []
    
    var isEmpty : Bool {
        return array.isEmpty
    }
    
    var count : Int {
        return array.count
    }
    
    mutating func enqueue(_ element:T){
        array.append(element)
    }
    
    mutating func dequeue() -> T? {
        guard isEmpty == false else {
            return nil
        }
        return array.removeFirst()
    }
    
    func peek() -> T? {
        return array.first
    }
    
    
    
    
}
