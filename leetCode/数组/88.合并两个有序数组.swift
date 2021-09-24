//
//  88.合并两个有序数组.swift
//  leetCode
//
//  Created by clt on 2021/8/11.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation

/*
 给你两个有序整数数组 nums1 和 nums2，请你将 nums2 合并到 nums1 中，使 nums1 成为一个有序数组。

 初始化 nums1 和 nums2 的元素数量分别为 m 和 n 。你可以假设 nums1 的空间大小等于 m + n，这样它就有足够的空间保存来自 nums2 的元素。

  

 示例 1：

 输入：nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
 输出：[1,2,2,3,5,6]
 示例 2：

 输入：nums1 = [1], m = 1, nums2 = [], n = 0
 输出：[1]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/merge-sorted-array
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 */


class Solution88 {
    class func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        // 双指针
        var p1 = m - 1
        var p2 = n - 1
        // 指针总长
        var p = m + n - 1
        
        while p1 >= 0 && p2 >= 0 {
            // nums1比num2大
            if nums1[p1] > nums2[p2] {
                // 总长位置元素 = p1位置元素
                nums1[p] = nums1[p1]
                p1 -= 1
            }else{
                nums1[p] = nums2[p2]
                p2 -= 1
            }
            p -= 1
        }
        
        while p2 >= 0 {
            nums1[p] = nums2[p2]
            p2 -= 1
            p -= 1
        }
        
        print(nums1)
        
    }
}
