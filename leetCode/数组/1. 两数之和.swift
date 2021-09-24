//
//  1两数之和.swift
//  leetCode
//
//  Created by clt on 2020/11/20.
//  Copyright © 2020 clt. All rights reserved.
//

import Foundation




/*
 1. 两数之和
 
 给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那两个整数，并返回他们的数组下标。
 你可以假设每种输入只会对应一个答案。但是，数组中同一个元素不能使用两遍。
 

 示例:
 给定 nums = [2, 7, 11, 15], target = 9

 因为 nums[0] + nums[1] = 2 + 7 = 9
 所以返回 [0, 1]

 
 */
class Solution1 {
    
    //双重循环 暴力破解 最慢
   class func twoSum1(_ nums: [Int], _ target: Int) -> [Int] {
        for (currentIndex,currentNum) in nums.enumerated(){
            for remainderIndex in currentIndex ..< nums.count {
                // 双重循环 两数相加 返回外层循环下标和内层循环下标
                if (currentNum + nums[remainderIndex] == target) && currentIndex != remainderIndex {
                    return [currentIndex,remainderIndex]
                }
            }
        }
    
    return []
    }
    
    
    /*
     思路二:

    1 根据目标和遍历当前值,获得剩余数值
    2 查询余数值在数组中的下标,这里的对比查找个人认为是超时的主要原因
    3 如果查询到的两个下标不同,返回
     
     相较于暴力破解较快
     
     */
    class func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
        
        for (currentIndex,currentNum) in nums.enumerated() {
            // 获取余数
            let remainderNum = target - currentNum
            // 通过余数获取在数组内的下标
            if let remainderIndex = nums.firstIndex(of: remainderNum) {
                // 判断下标不相同（一个下标对应一个数，不可用一个下标的值相加得到目标值)
                if currentIndex != remainderIndex {
                    return [currentIndex,remainderIndex]
                }
            }
        }
        return []
    }
    
    
    /*
     思路三
     Hash

     创建Hash表,为遍历记录, 其中遍历的array.value为hash.key, array.index为hash.value
     遍历, 获取余数值,判断hask.keys中是否包含该数据
     包含,根据hash表,获取对应的index
     如果当前index == 余数index return
     
     优点：1次遍历取值 ，哈希键值标取值，效率快
     缺点：开辟内存
     
     */
    class func twoSum3(_ nums: [Int], _ target: Int) -> [Int] {
        
        var dic:[Int:Int] = [:]
        
        for (index,num) in nums.enumerated() {
            // 计算距离目标数相差多少
            let remainder = target - num
            // 查找哈希map内是否有该值
            if dic.keys.contains(remainder) {
                // 获取余数的下标和当前的下标， 并判断下标不相同（一个下标对应一个数，不可用一个下标的值相加得到目标值)
                if let remainderIndex = dic[remainder] , remainderIndex != index {
                    return [remainderIndex,index]
                }
            }
            // 值放入哈希表内 ，当前遍历的值为key ，value为index
            dic[num] = index
            
        }
        return []
    }
    
    
    /*
     
     思路四
     二分查询

     对传入数据进行排序, swift sorted, 默认自小而大
     定义两个下标 left right, 一个自小而大 一个自大而小
     while 循环 获取两个下标对应的value leftNum rightNum
     如果leftNum + rightNum == target 满足条件 return 原数组的坐标 跳出循环
     如果 > targer 则缩小下一个数据和 right -= 1
     如果 < targer 则增大下一个数据和 left += 1

     */
    
    class func twoSum4(_ nums: [Int], _ target: Int) -> [Int] {
        
        // 排序从小到大 (二分查找建立在有序的数组条件下)
        let numbers = nums.sorted()
        // 左边最小下标
        var left = 0
        // 右边最大下标
        var right = numbers.count - 1
        // 结果
        var result:[Int] = []
  
        // 循环
        while left < right {
            // 坐标值
            let leftNum = numbers[left]
            // 右边值
            let rightNum = numbers[right]
            // 两数相加
            let sum = leftNum + rightNum
            // 如果相等获取前半段的下标和后半段的下标(swift4.2开始增加函数 firstIndex从前往后查找，lastIndex从后往前查找)
            if sum == target {
                result = [nums.firstIndex(of: leftNum)!,nums.lastIndex(of: rightNum)!]
                break
            }
            // 如果大于说明在前半段
            else if sum > target{
                right -= 1
            }
            // 如果小于说明在后半段
            else if sum < target {
                left += 1
            }
        }
        return result
    }

    
    
}

