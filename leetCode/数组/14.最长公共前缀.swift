//
//  14.最长公共前缀.swift
//  leetCode
//
//  Created by clt on 2021/8/5.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation


/*
 首先还是看下题目：

 题目14: 最长公共前缀
 编写一个函数来查找字符串数组中的最长公共前缀。如果不存在公共前缀，则返回""
 示例1:

 输入: ["flower","flow","flight"]
 输出: "fl"
 示例 2:

 输入: ["dog","racecar","car"]
 输出: ""
 
 解释:
 输入不存在公共前缀。
 
 说明：

 所有输入只包含小写字母 a-z
 
 */


class Solution14 {
    
    class  func longestCommonPrefix(_ strs: [String]) -> String {
        
        if strs.count == 0 {
            return ""
        }
        
        // 默认取第0个为基础值 进行比较
        var prefix = strs[0]
        for i in 1..<strs.count {
            // 获取公共部分的前缀
            prefix = twoStrPublicPrefix(prefix, strs[i])
            if prefix.count == 0 {
                break
            }
        }
        
        return  prefix
    }
    
   class  func twoStrPublicPrefix(_ str1:String , _ str2:String) -> String {
        
        var index = 0
        
        let minCount = min(str1.count, str2.count)
        // 控制最小的遍历  防止超出循环
        while index < minCount {
            // 字符比较获取 index下标下的字符 与 str2的字符比较  如果不相等跳出  相等index移位
            if str1[str1.index(str1.startIndex, offsetBy: index)] != str2[str2.index(str2.startIndex, offsetBy: index)] {
                break
            }
            index += 1
            
        }
        
        
        return String(str1.prefix(index))
    }
    
    
    
}
