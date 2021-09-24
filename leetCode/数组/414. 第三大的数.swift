//
//  414. 第三大的数.swift
//  leetCode
//
//  Created by clt on 2021/8/16.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation



class Solution414 {
     class func thirdMax(_ nums: [Int]) -> Int {
        
        // 3个指针 p1最大 p2 第2大   p3 第3大的数
        var p1 = Int.min
        var p2 = Int.min
        var p3 = Int.min
        
        for value in nums {
            // 过滤重复
            if p1 == value || p2 == value || p3 == value {
                continue
            }
            
            // 比较交换
            if value > p1 {
                p3 = p2
                p2 = p1
                p1 = value
            }else if value > p2 {
                p3 = p2
                p2 = value
            }else if value > p3 {
                p3 = value
            }
        }
        
        // 返回判断 如果p3没有改变那么返回最大的，如果改变了返回p3
        return p3 == Int.min ? p1 : p3
        
        
    }
}
