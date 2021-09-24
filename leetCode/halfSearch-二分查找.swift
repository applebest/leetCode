//
//  halfSearch-二分查找.swift
//  leetCode
//
//  Created by clt on 2021/8/27.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation


func searchTargetIndex(_ nums:[Int] ,  _ target:Int) -> Int {
    
    // 二分查找的基础 建立在数组为有序数组上，也就是说数组内的数据要从小到大排列
    
    // 定义双指针，begin为0左边下标， end 最后一个下标
    var begin = 0 , end = nums.count - 1
    while begin <= end {
        //取中间下标
        let mid = begin + (end - begin) / 2
        // 如果中间下标小于查找目标值，那么左指针右移 扩大搜索面积
        if nums[mid] < target {
            begin = mid + 1
        }
        // 如果中间下标大于查找目标值，那么右指针左移 缩小搜索面积
        else if nums[mid] > target{
            end = mid - 1
        }
        else{
           return mid
        }
        
    }
    
    return -1
}
