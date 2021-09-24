//
//  quickSort-快排.swift
//  leetCode
//
//  Created by clt on 2021/8/24.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation


func quickSort(nums:inout [Int],begin: Int , end:Int) {
    
    guard begin < end else {
        return
    }
    
    let temp = nums[begin]
    var i = begin ,j = end
    while i < j {
        
        while i < j && nums[j] > temp {
            j -= 1
        }
        nums[i] = nums[j]
        
        while i < j && nums[i] <= temp {
            i += 1
        }
        nums[j] = nums[i]
        
    }
    
    nums[i] = temp
    quickSort(nums: &nums, begin: begin, end: i - 1)
    quickSort(nums: &nums, begin: i + 1, end: end)
    
    
    
    
}
