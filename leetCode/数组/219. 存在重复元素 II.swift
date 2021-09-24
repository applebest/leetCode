//
//  219. 存在重复元素 II.swift
//  leetCode
//
//  Created by clt on 2021/8/12.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation

/*
 给定一个整数数组和一个整数 k，判断数组中是否存在两个不同的索引 i 和 j，使得 nums [i] = nums [j]，并且 i 和 j 的差的 绝对值 至多为 k。

  

 示例 1:

 输入: nums = [1,2,3,1], k = 3
 输出: true
 示例 2:

 输入: nums = [1,0,1,1], k = 1
 输出: true
 示例 3:

 输入: nums = [1,2,3,1,2,3], k = 2
 输出: false

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/contains-duplicate-ii
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */



class Solution219 {
    class  func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {

        var nums = nums
        nums.sort { a, b in
           return abs(a) > abs(b)
        }
        
        var i = 0
        
        while i < nums.count - 1 {
            let current = nums[i]
            let next = nums[i + 1]
            if current != next && abs(current - next)  == k {
                return true
            }
            i += 1
        }

        return false
    }
}
