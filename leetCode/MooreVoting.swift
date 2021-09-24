//
//  MooreVoting.swift
//  leetCode
//
//  Created by clt on 2021/2/9.
//  Copyright © 2021 clt. All rights reserved.
//

// 摩尔投票算法
import Foundation


func mooreVoting(_ nums:[Int]) -> Int {
    
    var count = 0
    var ret = 0

    for i in 0..<nums.count {
        if count == 0{
            ret = nums[i]
        }
        if ret == nums[i] {
            count += 1
        }else{
            count -= 1
        }

    }

    return ret



    
    
}
