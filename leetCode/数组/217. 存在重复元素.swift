//
//  217. 存在重复元素.swift
//  leetCode
//
//  Created by clt on 2021/8/12.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation

/*
 给定一个整数数组，判断是否存在重复元素。

 如果存在一值在数组中出现至少两次，函数返回 true 。如果数组中每个元素都不相同，则返回 false 。

  

 示例 1:

 输入: [1,2,3,1]
 输出: true
 示例 2:

 输入: [1,2,3,4]
 输出: false
 示例 3:

 输入: [1,1,1,3,3,4,3,2,4,2]
 输出: true


 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/contains-duplicate
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */


class Solution217 {
   class func containsDuplicate(_ nums: [Int]) -> Bool {
        var map:[Int:Int] = [Int:Int]()
        var result  =  false
    
        for i in nums {
            if let c = map[i] {
                map[i] = c + 1
            }else{
                map[i] = 1
            }
            
            if let c  = map[i] , c >= 2 {
                result = true
                print(i)
                break
            }
        }
    
        return result
    
    }
}
