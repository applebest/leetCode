//
//  5. 最长回文子串 .swift
//  leetCode
//
//  Created by clt on 2020/11/25.
//  Copyright © 2020 clt. All rights reserved.
//

import Foundation
class Solution5 {
    
    
    /*
     给定一个字符串 s，找到 s 中最长的回文子串。你可以假设 s 的最大长度为 1000。

     示例 1：
     输入: "babad"
     输出: "bab"
     注意: "aba" 也是一个有效答案。
     
     
     示例 2：
     输入: "cbbd"
     输出: "bb"
     
     */
    class func longestPalindrome1(_ s: String) -> String {

        let count = s.count
        if count < 2 {return s}
        // 转换chart数组
        let arr = s.map{$0}
        var maxLen = 1
        var begin = 0
        var i = 0
        while i < count {
            // 左边指针
            var l = i - 1
            // 右边指针
            var r = i + 1
            // 解决aaaab的情况
            while r < count && arr[i] == arr[r] {
                r += 1
            }
            // 指针移动到重复的最大位置r的位置 （经过上面的while已经确保最大的重复串的位置)
            i = r
            
            // 左指针和右指针指向的内容相同，向两边扩散
            while l >= 0 && r < count && arr[l] == arr[r] {
                l -= 1
                r += 1
            }
            // 相同内容的长度, 右边指针的长度-左边指针的长度 l+1为 第一次循环l为-1
            let len = r - (l + 1)
            // 相同内容长度大于总长度 替换，左边begin指针移动
            if len > maxLen {
                maxLen = len
                begin = l + 1
            }
        }
        let startIndex = s.index(s.startIndex, offsetBy: begin)
        let endIndex = s.index(startIndex, offsetBy: maxLen)

        return "\(s[startIndex..<endIndex])"
        
    }
    
    
   class func longestPalindrome2(_ s: String) -> String {
            if s.count < 2 {
                return s
            }
            var start = 0
            var maxLength = 0
            let sArr = Array(s)
            for i in 0 ..< sArr.count {
                // 检查是否是重合字符串 aa bb  cc
                isPal(i, i, sArr, &start, &maxLength)
                isPal(i, i + 1, sArr, &start, &maxLength)
            }
            return String(sArr[start ..< start + maxLength])
        }
    
    
     class   func isPal(_ left: Int, _ right: Int, _ sArr: [Character], _ start: inout Int, _ maxLength: inout Int) {
            var left = left
            var right = right
        // 如果相等指针向外扩散
            while left >= 0, right < sArr.count, sArr[left] == sArr[right] {
                left -= 1
                right += 1
            }
        // 更新最大长度
            if maxLength < right - left - 1 {
                maxLength = right - left - 1
                start = left + 1
            }
        }

}
