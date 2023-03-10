//
//  4寻找两个正序数组的中位数.swift
//  leetCode
//
//  Created by clt on 2020/11/24.
//  Copyright © 2020 clt. All rights reserved.
//

import Foundation


/*
 给定两个大小为 m 和 n 的正序（从小到大）数组 nums1 和 nums2。请你找出并返回这两个正序数组的中位数。

 进阶：你能设计一个时间复杂度为 O(log (m+n)) 的算法解决此问题吗？

 
 */

class Solution4 {
   class func findMedianSortedArrays1(_ nums1: [Int], _ nums2: [Int]) -> Double {
        // 占位数组 两个数组个数的总和
    var mergeArray = Array(repeating: 0, count: nums1.count + nums2.count)
    // 移动指针
    var i = 0
    var j = 0
    //循环总数
    for index in 0..<mergeArray.count {
        /*
         j 超过nums2的个数 但i没有超过数组1的个数，并且数组1下标元素<=当前数组2的当前下标元素
         如果进到这个判断，这里j不满足条件不会+1 ，故j对应的数组2的下标为本次循环中j上一次所指向的数组2的下标元素
         如果不满足这个条件，则j的指针移动，而i的指针指向的还是原本的数组1的下标，再次比较j指向的元素放入集合中
        */
        if (j >= nums2.count) || (i < nums1.count && nums1[i] <= nums2[j]) {
            mergeArray[index] = nums1[i]
            i += 1
        }
        //! if (i >= nums1.count || j < nums2.count && nums1[i] > nums2[j]
        else{
            mergeArray[index] = nums2[j]
            j += 1
        }
    }
    // 偶数数组 [1,2,3,4]  4位数组取下标1和2的位置的元素相加/2得到中位数
    if mergeArray.count % 2 == 0 {
        return Double(mergeArray[mergeArray.count / 2 - 1] + mergeArray[mergeArray.count / 2]) / 2.0
    }
        return Double(mergeArray[mergeArray.count / 2])
    }
    
    
    
    
    class func findMedianSortedArrays2(_ nums1: [Int], _ nums2: [Int]) -> Double {

        // 两个指针
        var i = 0
        var j = 0
        // 上一个数
        var perNum = 0
        // 当前的数
        var currentNum = 0
        
        // 这种算法前提为两个数组的大小是有序的
        // 循环控制：中位数一定会在循环到两个数组一半的时候找到
        while i+j <= (nums1.count + nums2.count)/2 {
            // 记录前一个数
            perNum = currentNum
            /*
             j 超过nums2的个数 但i没有超过数组1的个数，并且数组1下标元素<=当前数组2的当前下标元素
             如果进到这个判断，这里j不满足条件不会+1 ，故j对应的数组2的下标为本次循环中j上一次所指向的数组2的下标元素
             如果不满足这个条件，则j的指针移动，而i的指针指向的还是原本的数组1的下标，再次比较j指向的元素
             两个指针来回指，currentNum不断变换，走到一半的时候即走到了两个数组下标对应的中点,即找到了两个数组中心点的数字
            */
            if j >= nums2.count || (i < nums1.count && nums1[i] <= nums2[j]) {
                currentNum = nums1[i]
                i += 1
            }else{
                currentNum = nums2[j]
                j += 1
            }
        }
        
        // 判断两个数组个数相加是否是偶数 1234 ，偶数中心为2、3 ，(2+3)/2 为最终结果，反之当前指向的数字为结果
        if (nums1.count + nums2.count) % 2 == 0 {
            return Double(currentNum + perNum) / 2.0
        }else{
            return Double(currentNum)
        }
    }
    
    
    
    
    
    
    
}
