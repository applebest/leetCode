//
//  ListNode.swift
//  leetcode
//
//  Created by qian on 2020/4/18.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

// 链表
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    
    
    /// 判断单链表中是否有环 (即某一个链表的指针指向前面的链表中的节点)
    ///             1 ← 8
    ///             ↓   ↑
    /// 5->3->7->2->6-> 9
    /// - Parameter head: 头节点
    /// - Returns: 是否有环
    static func isCycle(_ head:ListNode) -> Bool {
        var p1:ListNode? = head
        var p2:ListNode? = head
        while p2 != nil  && p2?.next?.next != nil {
            p1 = p1?.next
            p2 = p2?.next?.next
            if p1 == p2 {
                return true
            }
           
        }
        
        return false
    }
    
    // 获取相遇的环的点
    static func getCycleNode(_ node:ListNode?) -> ListNode?{
        
        if node == nil {return nil}
        
        var p1 = node
        var p2 = node
        while p2 != nil && p2?.next?.next != nil {
            p1 = p1?.next
            p2 = p2?.next?.next
            if p1 == p2 {
                return p1
            }
        }
        
        return nil
    }
    
    static func getCycleLength(_ node:ListNode?) -> Int{
        
        guard let node = node else {return 0}
        var current:ListNode? = node
        var length = 0
        
        while current != nil {
            current = current?.next
            length += 1
            if current == node {
                return length
            }
            
        }
        
        return length
        
    }
    

    // 创建一张长度为n的链表 (插入创建，每次插入到头部，渐渐增长  后来先到 逆序)
    static func createListTail(n:Int) -> ListNode?{
        
        var p:ListNode?
        let l = ListNode(n)
        for i in 1..<n {
            p = ListNode(i)
            p?.next = l.next
            l.next = p
        }
        return l
    }
    
    static func createNodeToList(_ list:[Int]) -> ListNode? {
        
        var p1 = ListNode(0)
        let p2 = p1
        
        for (_,e) in  list.enumerated() {
            let node = ListNode(e)
            p1.next = node
            p1 = node
        }
        p1.next = nil
        return p2.next
    }
    
    
    // 正序排列   0...7
    static func createListTail1(n:Int) -> ListNode?{
        
        // 创建新节点
        var r:ListNode? = ListNode(0)
        // 指向表头
        let l = r
        
        for i in 1..<n {
           let p = ListNode(i)
            // 表头的下一个 == 新的
            r?.next = p
            // 指向到新的节点  r指向本次的尾结点
            r = p
        }
        r?.next = nil
        return l
    }
    
    
    func clearList() {
        var p:ListNode? = self.next
        var q:ListNode?
        while p != nil {
            q = p?.next
            p = nil
            p = q
        }
        self.next = nil
        printListTail()
        print("clear List Success")
    }
    
    
    // 打印
     func printListTail(){
        var p:ListNode? = self
        while p != nil {
            print(p?.val ?? false)
            p = p?.next
        }
    }
    
    
    
}

// 遵循Equatable协议，  重载比较函数
extension ListNode: Equatable {
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        // === 代表对内存地址比较
        return lhs === rhs
    }
}

extension ListNode: Hashable {
    // 重载哈希散列
    public func hash(into hasher: inout Hasher) {
        hasher.combine(val)
        hasher.combine(next)
    }
}
