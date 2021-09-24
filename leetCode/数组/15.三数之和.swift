//
//  15.三数之和.swift
//  leetCode
//
//  Created by clt on 2021/8/9.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation

/*
 给你一个包含 n 个整数的数组 nums，判断 nums 中是否存在三个元素 a，b，c ，使得 a + b + c = 0 ？请你找出所有和为 0 且不重复的三元组。

 注意：答案中不可以包含重复的三元组。

  

 示例 1：

 输入：nums = [-1,0,1,2,-1,-4]
 输出：[[-1,-1,2],[-1,0,1]]
 示例 2：

 输入：nums = []
 输出：[]
 示例 3：

 输入：nums = [0]
 输出：[]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/3sum
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */




class Solution15 {
    
    /*
     思路
    1 数组排序从小到大排序，小的靠左，大的靠右 ，固定一个值 ，利用双指针查找另外两个值 将3个值相加如果等于0 那么加入到数组内
    2 因为数组已经排序 如果3个值相加 > 0  那么右边值肯定大于左边值 ,那么右边的指针-1 也就是左移动 ,反之 < 0 左边指针右移 +1 也就是扩大值
    3 在查找过程中要注意双指针过滤，即left 与 left+1 ， right 与 right -1 对应的值不相等，如果相等移动指针
    
    4 固定的值也需要注意过滤 ，即此次循环i对应的值与上次循环不相等，如果相等跳过此次循环
     
     */
    class func threeSum(_ nums: [Int]) -> [[Int]] {
       
        var result:[[Int]] = []
        if nums.count < 3 {
            return result
        }
        // 排序 从小到大
        let nums = nums.sorted()
        let length = nums.count
        for (i,e) in nums.enumerated() {
            
            // 过滤最小的如果大于0 ，直接退出 因为后面的数再相加也大于0
            if e > 0 {
                break
            }
            
            // 过滤相同的固定值，此次遍历如果标定的值与前面值相等 ，已经计算过1遍的不需要再跑一遍，去除重复解
            if i > 0 && e == nums[i - 1] {
                continue
            }
            // 定义左边指针
            var l = i+1
            // 定义右边指针
            var r = length - 1
            // 循环指针找到以i为固定值 ，left指针与right指针的所有相加和为0的数
            while l < r {
                
                let threeValue = nums[l] + nums[r] + e
                
                if  threeValue  == 0 {
                    result.append([nums[i],nums[l],nums[r] ])
                    // 过滤左边指针相同的值 ，如果相等 那么指针右移
                    while l < r && nums[l] == nums[l + 1] {
                        l += 1
                    }
                    // 过滤右边指针相同的值
                    while l < r && nums[r] == nums[r - 1] {
                        r -= 1
                    }
                    l += 1
                    r -= 1
                    // 因为排序从小到大，小于0的情况 那么必然左边的指针的值大于右边指针的值
                }else if threeValue < 0 {
                    l += 1
                }else{
                    // 相反情况右边值大于左边值  那么右边指针向左移动
                    r -= 1
                }
                
                
            }
            
            
            
        }
        
     
        
        
        
        return result
    }
}
