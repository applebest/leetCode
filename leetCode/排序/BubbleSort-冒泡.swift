//
//  BubbleSort.swift
//  leetCode
//
//  Created by clt on 2020/11/25.
//  Copyright © 2020 clt. All rights reserved.
//

import Foundation


// 冒泡排序
func bubbleSort(_ nums: inout [Int]) {
    let n = nums.count
    for i in 0..<n-1 {
        for j in 0..<(n - 1 - i) {
            if nums[j] > nums[j+1] {
//                let temp = nums[j]
//                nums[j] = nums[j+1]
//                nums[j + 1] = temp
                nums.swapAt(nums[j], nums[j+1])
            }
        }
    }
}



/// 优化版冒泡排序 当已经为有序数组后跳出循环 减少循环次数
func bubbleSortOptimization(_ nums: inout [Int]) {
    
    // 记录最后一次交换的位置
    var lastExchangeIndex = 0
    // 循环边界最大值
    var sortBorder = nums.count - 1
    let n = nums.count
    for _ in 0..<n - 1 {
        var isSorted = true
        for j in 0..<sortBorder {
            if nums[j] > nums[j + 1] {
                let temp = nums[j]
                nums[j] = nums[j + 1]
                nums[j + 1] = temp
                isSorted = false
                lastExchangeIndex = j
            }
        }
        sortBorder = lastExchangeIndex
        if isSorted {
            break
        }
    }
    
}


/// 鸡尾酒冒泡排序
/// 适用场景：适用于大部分元素已经有序的情况
/// 从左向右 再从右向左 排序
func cocktailSort(_ nums:inout [Int]) {
    
    var temp = 0
    for i in 0..<nums.count / 2 {
        var isSort = true
        var j = i
        // 从左向右比较
        while j < (nums.count - i - 1) {
            if nums[j] > nums[j + 1] {
                temp = nums[j]
                nums[j] = nums[j + 1]
                nums[j + 1] = temp
                isSort = false
            }
            j += 1
        }
        // 如果没有比较结束本轮
        if isSort {
            break
        }
        
        // 重新赋值
        isSort = true
        // 从右向左比较
        var k = nums.count - i - 1
        while k > i {
            if nums[k] < nums[k - 1] {
                temp = nums[k]
                nums[k] = nums[k - 1]
                nums[k - 1] = temp
                isSort = false
            }
            k -= 1
        }
        
        if isSort {
            break
        }
    }

}

