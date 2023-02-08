//
//  链表中的倒数第k个节点.swift
//  leetCode
//
//  Created by clt on 2022/9/21.
//  Copyright © 2022 clt. All rights reserved.
//

import Foundation


func findNodeByDescendIndex(head:ListNode?,k:Int) -> ListNode? {
    
    
    if head == nil {
        return head
    }
    var k = k
    
    // 快慢指针
    var fast = head
    var slow = head
    
    // 快指针先走k步
    while k > 0 {
        fast = fast?.next
        k -= 1
    }
    // 此时fast走到null 距离 n-k的距离
    // slow继续走 ，当fast走到nil 那么slow就走到了k的位置
    while fast != nil {
        slow = slow?.next
        fast = fast?.next
    }
    
    return slow
    
}

func deleteDuplicates ( _ head: ListNode?) -> ListNode? {
        // write code here
        var head = head
        if head == nil {
            return head
        }

        while head?.next != nil && head?.next?.next != nil {
            if head?.next?.val == head?.next?.next?.val {
                head?.next = head?.next?.next
            }else{
                head = head?.next
            }
        }
        return head

    }
