//
//  628. 三个数的最大乘积.swift
//  leetCode
//
//  Created by clt on 2021/8/17.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation


/*
 给你一个整型数组 nums ，在数组中找出由三个数组成的最大乘积，并输出这个乘积。

  

 示例 1：

 输入：nums = [1,2,3]
 输出：6
 示例 2：

 输入：nums = [1,2,3,4]
 输出：24
 示例 3：

 输入：nums = [-1,-2,-3]
 输出：-6
  

 
 */

class Solution628 {
    
    // 解题思路： https://leetcode-cn.com/problems/maximum-product-of-three-numbers/solution/5ge-zhi-zhen-xun-zhao-zui-da-de-3ge-shu-6jg0n/
        class   func maximumProduct(_ nums: [Int]) -> Int {
        
        // 解题思路如 414. 第三大的数  找到3个最大的数 ，和两个最小的数
        
        // swift简化写法 maxValue 是3个指针
        var maxValue = (Int.min,Int.min,Int.min)
        // 2个指针
        var minValue = (Int.max,Int.max)
        
        for value in nums {
            if maxValue.0  < value {
                maxValue = (value,maxValue.0,maxValue.1)
            }
            else if maxValue.1 < value {
                maxValue = (maxValue.0,value,maxValue.1)
            }else if maxValue.2 < value {
                maxValue.2 = value
            }
            
            if minValue.0 > value {
                minValue = (value,minValue.0)
            }else if minValue.1 > value {
                minValue.1 = value
            }
            
        }
        return max(maxValue.0 * maxValue.1 * maxValue.2, minValue.0 * minValue.1 * maxValue.0)
    }
    
    
    // 写法同上 将每个指针拆出来而已
    class   func maximumProduct1(_ nums: [Int]) -> Int {
        
        if nums.count < 3 {
             return 0
         }
         var p1 = Int.min
         var p2 = Int.min
         var p3 = Int.min
         var m1 = Int.max
         var m2 = Int.max
         for value in nums {
             // 寻找最大的3个
             if p1 < value {
                 p3 = p2
                 p2 = p1
                 p1 = value
             }else if p2 < value {
                 p3 = p2
                 p2 = value
             }
             else if p3 < value {
                 p3 = value
             }
             // 寻找最小的2个
             if value < m1 {
                 m2 = m1
                 m1 = value
             }
             else if value < m2 {
                 m2 = value
             }

         }

         return  max(p1 * p2 * p3,m1 * m2 * p1)
    }
    
}
