//
//  350. 两个数组的交集 II.swift
//  leetCode
//
//  Created by clt on 2023/2/13.
//  Copyright © 2023 clt. All rights reserved.
//

import Foundation


class Solution350_1 {
    class func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {

        var dict = [Int: Int]()
        for num in nums1 {
            if dict[num] != nil {
                dict[num] = dict[num]! + 1
            }else{
                dict[num] = 1
            }
            
        }
        var result = [Int]()
        for num in nums2 {
            if let count = dict[num] , count > 0 {
                dict[num] = dict[num]! - 1
                result.append(num)
                if dict[num]! == 0{
                    dict[num] = nil
                }
                
            }
            
        }
        
        
        
        return result
    }
}
