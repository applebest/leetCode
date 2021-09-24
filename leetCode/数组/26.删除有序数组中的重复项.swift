//
//  26.删除有序数组中的重复项.swift
//  leetCode
//
//  Created by clt on 2021/8/6.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation



/*
 给你一个有序数组 nums ，请你 原地 删除重复出现的元素，使每个元素 只出现一次 ，返回删除后数组的新长度。

 不要使用额外的数组空间，你必须在 原地 修改输入数组 并在使用 O(1) 额外空间的条件下完成。

  

 说明:

 为什么返回数值是整数，但输出的答案是数组呢?

 请注意，输入数组是以「引用」方式传递的，这意味着在函数里修改输入数组对于调用者是可见的。

 你可以想象内部操作如下:

 // nums 是以“引用”方式传递的。也就是说，不对实参做任何拷贝
 int len = removeDuplicates(nums);

 // 在函数里修改输入数组对于调用者是可见的。
 // 根据你的函数返回的长度, 它会打印出数组中 该长度范围内 的所有元素。
 for (int i = 0; i < len; i++) {
     print(nums[i]);
 }
  
 示例 1：

 输入：nums = [1,1,2]
 输出：2, nums = [1,2]
 解释：函数应该返回新的长度 2 ，并且原数组 nums 的前两个元素被修改为 1, 2 。不需要考虑数组中超出新长度后面的元素。
 示例 2：

 输入：nums = [0,0,1,1,1,2,2,3,3,4]
 输出：5, nums = [0,1,2,3,4]
 解释：函数应该返回新的长度 5 ， 并且原数组 nums 的前五个元素被修改为 0, 1, 2, 3, 4 。不需要考虑数组中超出新长度后面的元素。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array
 
 */


class Solution26 {
    class func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        // 效率慢  主要在于数组remove 耗时
        
//        var i = 0
//
//        // 定义双指针 后面的指针小于数组长度
//        while (i + 1) < nums.count {
//
//            // 比较如果 left指针 与 right指针不相等  那么前面指针右移1位
//            if nums[i] != nums[i+1] {
//                i += 1
//            }else{
//                // 如果相等那么删除后面 重复的数据 ，left指针不动
//                nums.remove(at: i + 1)
//
//            }
//        }
//
//        return nums.count
        
        
        
        
        
        var l = 0
        for r in 1..<nums.count {
            if nums[l] != nums[r] {
                l += 1
                nums[l] = nums[r]
            }
        }

        print(nums)

        return l + 1
        
    }
}
