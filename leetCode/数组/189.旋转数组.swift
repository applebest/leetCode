//
//  189.旋转数组.swift
//  leetCode
//
//  Created by clt on 2021/8/6.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation


/*
 
 LeetCode 189
 
 给定一个数组，将数组中的元素向右移动 k 个位置，其中 k 是非负数。

  

 进阶：

 尽可能想出更多的解决方案，至少有三种不同的方法可以解决这个问题。
 你可以使用空间复杂度为 O(1) 的 原地 算法解决这个问题吗？
  

 示例 1:

 输入: nums = [1,2,3,4,5,6,7], k = 3
 输出: [5,6,7,1,2,3,4]
 解释:
 向右旋转 1 步: [7,1,2,3,4,5,6]
 向右旋转 2 步: [6,7,1,2,3,4,5]
 向右旋转 3 步: [5,6,7,1,2,3,4]
 示例 2:

 输入：nums = [-1,-100,3,99], k = 2
 输出：[3,99,-1,-100]
 解释:
 向右旋转 1 步: [99,-1,-100,3]
 向右旋转 2 步: [3,99,-1,-100]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/rotate-array
 
 
 */



class Solution189 {

    /*
        先翻转 整个数组
        再翻转前 k 个元素 [0, k - 1]
        最后翻转后 n-k 个元素 [k, count - 1]
        */
   class func rotate(_ nums: inout [Int], _ k: Int) {
    
        let k = k % nums.count
    
        reverse(&nums, 0, nums.count - 1);
        reverse(&nums, 0, k - 1)
        reverse(&nums, k, nums.count - 1)
   
   }
    
   private class func reverse(_ nums: inout [Int] , _ begin:Int , _ end: Int) {
        
        var l = begin
        var r = end
        while l < r {
            // 原地替换法  交换两个位置的数字
            nums[l] = nums[l] + nums[r]
            nums[r] = nums[l] - nums[r]
            nums[l] = nums[l] - nums[r]
            
            l += 1
            r -= 1
        }
        
        
        
    }
    
    
    
}
