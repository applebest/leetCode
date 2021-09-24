//
//  66.加一.swift
//  leetCode
//
//  Created by clt on 2021/8/6.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation


/*
 给定一个由 整数 组成的 非空 数组所表示的非负整数，在该数的基础上加一。

 最高位数字存放在数组的首位， 数组中每个元素只存储单个数字。

 你可以假设除了整数 0 之外，这个整数不会以零开头。

  

 示例 1：

 输入：digits = [1,2,3]
 输出：[1,2,4]
 解释：输入数组表示数字 123。
 示例 2：

 输入：digits = [4,3,2,1]
 输出：[4,3,2,2]
 解释：输入数组表示数字 4321。
 示例 3：

 输入：digits = [0]
 输出：[1]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/plus-one
 
 */

class Solution66 {
    
    
    class func plusOne(_ digits: [Int]) -> [Int] {
        
        var digits = digits;
        // 倒序遍历
        var i = digits.count - 1
        while i >= 0 {
            // 个位加1
            digits[i] += 1
            // 对10取余数 如果个位为9 + 1后为10  那么10 % 10 取余为0
            digits[i] = digits[i] % 10
            // 不为0    如123  + 1 == 124   那么直接return
            if digits[i] != 0 {
                return digits
            }
            // 如果为0  指针前移1位 也就是进1 ，进入下一个循环 十分位加1 ，因为个位+1为0后，十分位也要+1 ，如此循环到不需要加1进位为止
            i -= 1
        }
        
        // 走到这里那么必定为 999的情况  ，那么直接在首位插入1
        digits.insert(1, at: 0)
        return digits
        
    }
    
    
}
