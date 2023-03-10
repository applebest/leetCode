//
//  3无重复字符的最长子串.swift
//  leetCode
//
//  Created by clt on 2020/11/24.
//  Copyright © 2020 clt. All rights reserved.
//

import Foundation

/*
 给定一个字符串，请你找出其中不含有重复字符的 最长子串 的长度。

 示例 1:

 输入: "abcabcbb"
 输出: 3
 解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。
 示例 2:

 输入: "bbbbb"
 输出: 1
 解释: 因为无重复字符的最长子串是 "b"，所以其长度为 1。
 示例 3:

 输入: "pwwkew"
 输出: 3
 解释: 因为无重复字符的最长子串是 "wke"，所以其长度为 3。
      请注意，你的答案必须是 子串 的长度，"pwke" 是一个子序列，不是子串。
 
 */


class Solution3 {
   class func lengthOfLongestSubstring1(_ s: String) -> Int {
        if s.isEmpty {return 0}
        
    //abcabcbb
    let strArr:Array<Character> = Array(s)
    
    // 映射map key为char ，value为下标
    var map:Dictionary<Character,Int> = Dictionary<Character,Int>()
    
    var maxCount:Int = 0
    var left:Int = 0
    for i in 0 ..< strArr.count{
        
        // 返回指定索引处的字符
        let unichar = strArr[i]
        // 索引范围为从 0 到 length() - 1。 如果包含
        if map.keys.contains(unichar){
            // 通过map找到当前字符对应的value , value为数字(循环的下标)
            let index:Int = map[unichar] ?? 0
            // 比较大小 left指针右移或原地不动  循环从0开始这里+1
            left = max(left, index+1)
        }
        map[unichar] = i
        maxCount = max(maxCount, i - left + 1)
    }

        
        return maxCount
         
    }
    


}
