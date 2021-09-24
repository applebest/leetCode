//
//  countSort.swift
//  leetCode
//
//  Created by clt on 2021/1/21.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation


//计数排序
func countSort(_ nums:inout [Int]) {
    
    var max = nums[0]
    // 获取最大值
    for i in 1..<nums.count {
        if nums[i] > max {
            max = nums[i]
        }
    }
    // 遍历数组，填充统计数组
    var countArray = Array(repeating: 0, count: max+1)
    for i in 0..<nums.count {
        countArray[nums[i]] += 1
    }
    // 遍历统计数组，输出结果
    var index:Int = 0
    var sortedArray = Array(repeating: 0, count: nums.count)
    for i in 0..<countArray.count {
        for _ in 0..<countArray[i] {
            sortedArray[index] = i
            index += 1
        }
    }
    
    nums = sortedArray
    
    
    
}

