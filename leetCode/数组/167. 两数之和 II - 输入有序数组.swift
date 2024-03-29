//
//  167. 两数之和 II - 输入有序数组.swift
//  leetCode
//
//  Created by clt on 2021/8/11.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation


/*
 给定一个已按照 升序排列  的整数数组 numbers ，请你从数组中找出两个数满足相加之和等于目标数 target 。

 函数应该以长度为 2 的整数数组的形式返回这两个数的下标值。numbers 的下标 从 1 开始计数 ，所以答案数组应当满足 1 <= answer[0] < answer[1] <= numbers.length 。

 你可以假设每个输入只对应唯一的答案，而且你不可以重复使用相同的元素。

  
 示例 1：

 输入：numbers = [2,7,11,15], target = 9
 输出：[1,2]
 解释：2 与 7 之和等于目标数 9 。因此 index1 = 1, index2 = 2 。
 示例 2：

 输入：numbers = [2,3,4], target = 6
 输出：[1,3]
 示例 3：

 输入：numbers = [-1,0], target = -1
 输出：[1,2]


 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/two-sum-ii-input-array-is-sorted
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

class Solution167 {
    class func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {

        
        var left = 0
        var right = numbers.count - 1
        while left < right {
            let sum = numbers[left] + numbers[right]
            if sum == target {
                return [left + 1 ,right + 1]
            }else if sum < target {
                left += 1
            }else{
                right -= 1
            }
        }
        
        return [Int]()
        
    }
}
