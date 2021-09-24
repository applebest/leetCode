//
//  1089. 复写零.swift
//  leetCode
//
//  Created by clt on 2021/8/20.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation


/*
 给你一个长度固定的整数数组 arr，请你将该数组中出现的每个零都复写一遍，并将其余的元素向右平移。

 注意：请不要在超过该数组长度的位置写入元素。

 要求：请对输入的数组 就地 进行上述修改，不要从函数返回任何东西。

  

 示例 1：

 输入：[1,0,2,3,0,4,5,0]
 输出：null
 解释：调用函数后，输入的数组将被修改为：[1,0,0,2,3,0,0,4]
 示例 2：

 输入：[1,2,3]
 输出：null
 解释：调用函数后，输入的数组将被修改为：[1,2,3]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/duplicate-zeros
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

class Solution1089 {
   class func duplicateZeros(_ arr: inout [Int]) {
        
        let n = arr.count
        var i = 0
        while i < n {
            if arr[i] == 0 {
                var j = n - 1
                while j > i {
                    arr[j] = arr[j - 1]
                    j -= 1
                }
                i += 1
            }
            
            i += 1
        }
        
    }
}
