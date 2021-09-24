//
//  mergeSort-归并排序.swift
//  leetCode
//
//  Created by clt on 2021/8/27.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation



func moreSort(_ nums:[Int]) -> [Int] {
    if nums.count <= 1  {
        return nums
    }
    
    let length = nums.count
    let mid =  (length - 1) / 2   //获取数组中间位置
    
    let leftArray = moreSort(Array(nums[0...mid]))
    let rightArray = moreSort(Array(nums[mid + 1 ... length - 1]))
    
    let outArr = more(leftArray, rightArray)
        
    return outArr
}

fileprivate func more(_ array1:[Int] , _ array2:[Int]) -> [Int] {
    
    var temp:[Int] = [Int]()
    
    var i = 0 , j = 0
    
    // 判断大小归并加入数组内 这里有可能 i== array1.count | j < array2.count
    while i < array1.count && j < array2.count {
        
        if array1[i] < array2[j] {
            temp.append(array1[i])
            i += 1
        }else{
            temp.append(array2[j])
            j += 1
        }
    }
    
    // 这里跳出上面循环后 再判断循环加入剩余的数据
    while i < array1.count {
        temp.append(array1[i])
        i += 1
    }
    
    while j < array2.count {
        temp.append(array2[j])
        j += 1
    }
//
//
//    // 判断两个数组 哪个数组已经加完了所有元素
//    if i  == array1.count {
//        temp += array2[j...array2.count - 1]
//    }else{
//        temp += array1[i...array1.count - 1]
//    }
//
    return temp
}

