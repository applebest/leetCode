//
//  19.删除链表的倒数第 N 个结点.swift
//  leetCode
//
//  Created by clt on 2021/8/9.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation


/*
 给你一个链表，删除链表的倒数第 n 个结点，并且返回链表的头结点。

 进阶：你能尝试使用一趟扫描实现吗？

  

 示例 1：  n = 2
 1--- 2 --- 3 --- 4 -- 5

 1 ---2 --- 3 -------- 5
 
 输入：head = [1,2,3,4,5], n = 2
 输出：[1,2,3,5]
 
 示例 2：

 输入：head = [1], n = 1
 输出：[]
 示例 3：

 输入：head = [1,2], n = 1
 输出：[1]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 */

class Solution19 {
    class func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {

        // 哨兵指针
        let result = ListNode(-1)
        
        // 头节点
        var root = head
        
        // 哨兵指针的下一个等于头节点
        result.next = root
        
        // 记录前指针
        var pre:ListNode?
        
        // 当前指针为哨兵节点
        var cur:ListNode? = result
        
        var i = 1
        
        while root != nil {
            if i >= n {
                pre = cur
                cur = cur?.next
            }
            root = root?.next
            i += 1
        }
        pre?.next = pre?.next?.next
        
        return result.next
        
        
    }
}
