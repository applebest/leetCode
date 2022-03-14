//
//  35. 搜索插入位置.swift
//  leetCode
//
//  Created by clt on 2021/12/20.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation



/*
 
 给定一个排序数组和一个目标值，在数组中找到目标值，并返回其索引。如果目标值不存在于数组中，返回它将会被按顺序插入的位置。

 请必须使用时间复杂度为 O(log n) 的算法。

  

 示例 1:

 输入: nums = [1,3,5,6], target = 5
 输出: 2
 示例 2:

 输入: nums = [1,3,5,6], target = 2
 输出: 1
 示例 3:

 输入: nums = [1,3,5,6], target = 7
 输出: 4
 示例 4:

 输入: nums = [1,3,5,6], target = 0
 输出: 0
 示例 5:

 输入: nums = [1], target = 0
 输出: 0


 */



class Solution35 {
    static func searchInsert(_ nums: [Int], _ target: Int) -> Int {
         var left = 0
    var right = nums.count - 1
    while left < right {
        let mid = left + (right - left) / 2
        if nums[mid] < target {
            left += 1
        }else if nums[mid] > target {
            right -= 1
        }else{
            return mid
        }
    }
    
    return nums[left] < target ? left + 1 : left
    }
}
