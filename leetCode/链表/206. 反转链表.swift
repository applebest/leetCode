//
//  206. 反转链表.swift
//  leetCode
//
//  Created by clt on 2020/12/1.
//  Copyright © 2020 clt. All rights reserved.
//

import Foundation

class Solution206 {
  class  func reverseList1(_ head: ListNode?) -> ListNode? {
        
        if head == nil || head?.next == nil {
            return head
        }
        var current = head
        var per:ListNode? = nil
        //下一个链表不为nil
        while current != nil {
            // 取出下一个链表
            let next = current?.next
            // 下一个等于上一个链表
            current?.next = per
            // 上一个等于当前的
            per = current
            // 当前的等于下一个
            current  = next
        }
        return per
    }
    
    
    
    class  func reverseList2(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        let p = reverseList2(head?.next)
        head?.next?.next = head
        head?.next = nil
        return p
        
    }
    
    
  
    
    
    
    
}
