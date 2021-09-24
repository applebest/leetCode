//
//  21.合并两个有序链表.swift
//  leetCode
//
//  Created by clt on 2021/8/10.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation


/*
 
 将两个升序链表合并为一个新的 升序 链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。

 示例 1：


 输入：l1 = [1,2,4], l2 = [1,3,4]
 输出：[1,1,2,3,4,4]
 示例 2：

 输入：l1 = [], l2 = []
 输出：[]
 示例 3：

 输入：l1 = [], l2 = [0]
 输出：[0]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/merge-two-sorted-lists
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */


class Solution21 {
    class func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        let p1:ListNode? = ListNode(0)
        var p2 = p1
        
        var l1 = l1
        var l2 = l2
        
        while l1 != nil && l2 != nil {
            if l1?.val ?? 0 <= l2?.val ?? 0 {
                p2?.next = l1
                l1 = l1?.next
            }else{
                p2?.next = l2
                l2 = l2?.next
            }
            p2 = p2?.next
            
        }
        p2?.next  = l1 ?? l2
        
        return p1?.next
        
    }
}

