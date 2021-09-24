//
//  136.只出现一次的数字.swift
//  leetCode
//
//  Created by clt on 2021/8/11.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation


/*
 给定一个非空整数数组，除了某个元素只出现一次以外，其余每个元素均出现两次。找出那个只出现了一次的元素。

 说明：

 你的算法应该具有线性时间复杂度。 你可以不使用额外空间来实现吗？

 示例 1:

 输入: [2,2,1]
 输出: 1
 示例 2:

 输入: [4,1,2,1,2]
 输出: 4

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/single-number
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */




class Solution136 {
    
  /*
     
    1 任何数和 0 做异或运算，结果仍然是原来的数，即 a ^ 0 = a
    2 任何数和其自身做异或运算，结果是 0 , 即 a ^ a = 0
    3 异或运算满足交换律和结合律，即 a ^ b ^ a  = b ^ a ^ a  =  b ^ (a ^ a) = b ^ 0 = b
     
     此题只满足 数组内出现2次的情况 ，如数组为 [1,1,1, 2,2, 3,3,3 ,4] 则错误
     只满足数组内相同元素出现2次的情况，如出现超过两次错误 ，满足情况为 [1,2,2,1,4,4,6] 不满足情况为[1,2,2,2,1,4,4,6]
  */
    class func singleNumber(_ nums: [Int]) -> Int {

        // 方法1 只适用于本题
        
        var nums = nums
        for i in 1..<nums.count {
            nums[0] = nums[0] ^ nums[i]
        }
        return nums[0]
        
        
        
//        // 方法2 开辟空间寻找
//        var countMap : [Int:Int] = [:]
//        for (_,e) in nums.enumerated() {
//            // 以元素为键 ，value为出现次数+1
//            countMap[e] = (countMap[e] ?? 0 ) + 1
//        }
//
//        for (key,value) in countMap {
//            if value == 1 {
//                return key
//            }
//        }
//
//        return 0
    }
}
