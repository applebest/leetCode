//
//  70. 爬楼梯.swift
//  leetCode
//
//  Created by clt on 2022/2/19.
//  Copyright © 2022 clt. All rights reserved.
//

import Foundation


/*
 假设你正在爬楼梯。需要 n 阶你才能到达楼顶。

 每次你可以爬 1 或 2 个台阶。你有多少种不同的方法可以爬到楼顶呢？

  

 示例 1：

 输入：n = 2
 输出：2
 解释：有两种方法可以爬到楼顶。
 1. 1 阶 + 1 阶
 2. 2 阶
 示例 2：

 输入：n = 3
 输出：3
 解释：有三种方法可以爬到楼顶。
 1. 1 阶 + 1 阶 + 1 阶
 2. 1 阶 + 2 阶
 3. 2 阶 + 1 阶

 */

class Solution70 {
   static func climbStairs(_ n: Int) -> Int {

       if n <= 3 {
           return n
       }
       var f1 = 2 , f2 = 3
       for _ in 4...n{
           let f3 = f1 + f2
           f1 = f2
           f2 = f3
       }

       return f2
       
    }
}
