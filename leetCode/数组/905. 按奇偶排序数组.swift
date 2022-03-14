//
//  905. 按奇偶排序数组.swift
//  leetCode
//
//  Created by clt on 2022/2/18.
//  Copyright © 2022 clt. All rights reserved.
//

import Foundation


/*
 
 给定一个非负整数数组 A，返回一个数组，在该数组中， A 的所有偶数元素之后跟着所有奇数元素。

 你可以返回满足此条件的任何数组作为答案。


 示例：

 输入：[3,1,2,4]
 输出：[2,4,3,1]
 输出 [4,2,3,1]，[2,4,1,3] 和 [4,2,1,3] 也会被接受。
  

 提示：

 1 <= A.length <= 5000
 0 <= A[i] <= 5000


 */

class Solution909 {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var nums = nums
        var i = 0 , j = nums.count - 1
        while i < j {
            if nums[i] % 2 > nums[j] % 2 {
                let temp = nums[i]
                nums[i] = nums[j]
                nums[j] = temp
            }
            if nums[i] % 2 == 0 { i += 1}
            if nums[j] % 2 != 0 { j -= 1}
        }

        return nums
    }
}
