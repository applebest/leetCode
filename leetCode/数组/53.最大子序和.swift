//
//  53.最大子序和.swift
//  leetCode
//
//  Created by clt on 2021/8/11.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation

/*
 
 示例 1：

 输入：nums = [-2,1,-3,4,-1,2,1,-5,4]
 输出：6
 解释：连续子数组 [4,-1,2,1] 的和最大，为 6 。
 示例 2：

 输入：nums = [1]
 输出：1
 示例 3：

 输入：nums = [0]
 输出：0
 示例 4：

 输入：nums = [-1]
 输出：-1
 示例 5：

 输入：nums = [-100000]
 输出：-100000

 */



class Solution53 {
    class  func maxSubArray(_ nums: [Int]) -> Int {

        if nums.isEmpty {
            return 0
        }
        
        var maxNum = nums[0]
        var subMaxNum = 0
        
        for x in nums {
            subMaxNum = x + max(subMaxNum, 0)
            print("sub  \(subMaxNum)")
            maxNum = max(maxNum, subMaxNum)
            print("max  \(maxNum)")
        }
        
      return maxNum
    }
}
