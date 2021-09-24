//
//  2两数相加.swift
//  leetCode
//
//  Created by clt on 2020/11/23.
//  Copyright © 2020 clt. All rights reserved.
//

import Foundation


/*
 
 给出两个 非空 的链表用来表示两个非负的整数。其中，它们各自的位数是按照 逆序 的方式存储的，并且它们的每个节点只能存储 一位 数字。

 如果，我们将这两个数相加起来，则会返回一个新的链表来表示它们的和。

 您可以假设除了数字 0 之外，这两个数都不会以 0 开头。

 示例：

 输入：(2 -> 4 -> 3) + (5 -> 6 -> 4)
 输出：7 -> 0 -> 8
 原因：342 + 465 = 807
 
 */

class Solution2 {
    
    /*
     解题思路
     1 循环两个链表相加
     2 满10进1 ，下一个链表的值为sum%10取余数
     3 使用d记录最后相加是否进1 ，d = sum / 10   如sum为15 ，那么15/10 == 5 ，最后记录余出来的5
     */
  
   class func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
              if l1 == nil { return l2 }
              if l2 == nil { return l1 }
    
              var l1 = l1
              var l2 = l2
                // 新建空链表
              let root: ListNode = ListNode(0)
                // 指向header
              var cursor: ListNode? = root
                // 满十往前进一标记
              var d: Int = 0
              
            // 有一个链表不为空就循环
              while l1 != nil || l2 != nil {
                  
                // 两个链表的节点值相加再加上满10进1的标记
                  let sum = (l1?.val ?? 0) + (l2?.val ?? 0) + d
                  // 是否满10进1
                  d = sum / 10
                  // 下一个链表的值为取模的值
                  cursor?.next = ListNode(sum % 10)
                // 指向下一个链表
                  cursor = cursor?.next

                  l1 = l1?.next
                  l2 = l2?.next
              }
              
              // 两个链表最高位相加后大于10 需要链接最后一位
              if d > 0 {
                  cursor?.next = ListNode(d)
              }
    //  返回header
              return root.next
          }
}
