//
//  两个数组的交集.swift
//  leetCode
//
//  Created by clt on 2021/8/4.
//  Copyright © 2021 clt. All rights reserved.
//


/*
 
 给定两个数组，编写一个函数来计算它们的交集。

 
 示例 1:

 输入: nums1 = [1,2,2,1], nums2 = [2,2]

 输出: [2,2]
 
 
 示例 2:

 输入: nums1 = [4,9,5], nums2 = [9,4,9,8,4]

 输出: [4,9]
 
 
 说明：

 输出结果中每个元素出现的次数，应与元素在两个数组中出现的次数一致。
 我们可以不考虑输出结果的顺序。
 进阶:

 如果给定的数组已经排好序呢？将如何优化你的算法呢？
 思路：设定两个为0的指针，比较两个指针的元素是否相等。如果指针的元素相等，我们将两个指针一起向后移动，并且将相等的元素放入空白数组
 
 -----------------------------------------
 测试代码
 -----------------------------------------
 
 var nums1 = [1,2,3,4,4,5,6,7,10];
 var nums2 = [1,2,3,4,10]
 
 let result = Solution350.sortIntersect(&nums1, &nums2)
 
 -----------------------------------------
 
 */


import Foundation


class Solution350 {
    
    
   class  func intersect(_ nums1: [Int], _ nums2: inout [Int]) -> [Int] {
        
      // 创建map映射
        var m0:[Int:Int] = [:]
        
    // 循环每一个数字 以数字为key  对应的value为出现的次数+1
        for v in nums1 {
            
            if m0[v] != nil {
                m0[v]! += 1
            }else{
                m0[v] = 1
            }
            
        }
        
        var k = 0
        
        for v in nums2 {
            // 通过数组2的item 映射map对应的次数 如果大于0（出现的次数大于0）
            if (m0[v] != nil) && (m0[v] ?? 0 > 0) {
                // 次数-1  抵消
                m0[v]! -= 1
                // 修改下标0的位置为出现相同次数的数字
                nums2[k] = v
                k+=1
            }
        }
        
        // 截取数字
        return Array(nums2[0 ..< k])
     }
    
    
    
    
    // 对排序过的数组 进行相交找到交集
    class  func sortIntersect(_ nums1: inout [Int], _ nums2: inout [Int]) -> [Int] {
        
        var i = 0
        var j = 0
        var k = 0
        
        nums1.sort();
        nums2.sort();
        
        // 控制循环
        while i < nums1.count && j < nums2.count {
            // 如果下标i的元素 比下标 j元素小  那么较小的元素下标右移1位
            if nums1[i] < nums2[j] {
                i += 1
            }else if nums1[i] > nums2[j] {   // 反之另一个数组移动1位
                j += 1
            }else{
                // 相等的情况  修改原数组 不用另外开辟空间  循环完也就无用了
                nums1[k] = nums1[i]
                i += 1
                j += 1
                k += 1
            }
        }
        // 最终结果
        return Array(nums1[0..<k])
    }

    
    
    
}
