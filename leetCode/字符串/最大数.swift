//
//  最大数.swift
//  leetCode
//
//  Created by clt on 2022/9/21.
//  Copyright © 2022 clt. All rights reserved.
//

import Foundation

/*
 描述
 给定一个长度为n的数组nums，数组由一些非负整数组成，现需要将他们进行排列并拼接，每个数不可拆分，使得最后的结果最大，返回值需要是string类型，否则可能会溢出。
 示例1
 输入：
 [30,1]
 返回值：
 "301"
 
 
 
 示例2
 输入：
 [2,20,23,4,8]
 返回值：
 "8423220"

 
 示例3
 输入：
 [2]
 返回值：
 "2"

 示例4
 输入：
 [10]
 返回值：
 "10"

*/
 func solve ( _ nums: [Int]) -> String {
    // write code here
     let array = nums.sorted {return "\($0)\($1)" > "\($1)\($0)"}
     if let first = array.first, first == 0 {
         return "0"
     }
     var result = ""
     for num in nums {
         result += String(num)
     }
     
     
     return  result
}
