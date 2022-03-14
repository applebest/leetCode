//
//  42. 接雨水.swift
//  leetCode
//
//  Created by clt on 2022/2/28.
//  Copyright © 2022 clt. All rights reserved.
//

import Foundation


class Solution42 {
   static func trap(_ height: [Int]) -> Int {
       if height.count == 0  {return 0}
       var sum = 0
       var i = 0 ,j = height.count - 1
       var leftMax = 0
       var rightMax = 0
       while i < j {
           leftMax = max(leftMax, height[i])
           rightMax = max(rightMax, height[j])
           if height[i] < height[j]{
               sum += leftMax - height[i]
               i += 1
           }else{
               sum += rightMax - height[j]
               j -= 1
           }
       }
       
       return sum
    }
}
