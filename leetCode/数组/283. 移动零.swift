//
//  283. 移动零.swift
//  leetCode
//
//  Created by clt on 2021/8/12.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation

/*
 
 给定一个数组 nums，编写一个函数将所有 0 移动到数组的末尾，同时保持非零元素的相对顺序。

 示例:

 输入: [0,1,0,3,12]
 输出: [1,3,12,0,0]
 说明:

 必须在原数组上操作，不能拷贝额外的数组。
 尽量减少操作次数。


 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/move-zeroes
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

class Solution283 {
    private var nums:[Int] = []
    class func moveZeroes(_ nums: inout [Int]) {
        var j = 0
        for i in 0..<nums.count {
            if nums[i] != 0{
                if nums[i] != nums[j] {
                    // 原地交换
                    nums[j] = nums[j] + nums[i]
                    nums[i] = nums[j] - nums[i]
                    nums[j] = nums[j] - nums[i]
                }
                j += 1
            }
        }
    }
}
