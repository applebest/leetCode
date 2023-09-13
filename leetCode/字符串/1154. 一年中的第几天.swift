//
//  1154. 一年中的第几天.swift
//  leetCode
//
//  Created by clt on 2023/3/13.
//  Copyright © 2023 clt. All rights reserved.
//


/*
 
 给你一个字符串 date ，按 YYYY-MM-DD 格式表示一个 现行公元纪年法 日期。返回该日期是当年的第几天。

  

 示例 1：

 输入：date = "2019-01-09"
 输出：9
 解释：给定日期是2019年的第九天。
 示例 2：

 输入：date = "2019-02-10"
 输出：41
  

 来源：力扣（LeetCode）
 链接：https://leetcode.cn/problems/day-of-the-year
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 */


import Foundation

class Solution1154 {
    
    func dayOfYear(_ date: String) -> Int {
        
        let arr = date.split(separator: "-")
        if  let year = Int(arr[0]) , let month = Int(arr[1]) , let day = Int(arr[2]) {
            var res = 0
            
             //月份 1 3 5 7 8 10 12           31天
            //月份  2(28 29) 4  6 9  11      30天
            var m = [31,28,31,30,31,30,31,31,30,31,30,31]
            
            if year % 400 == 0 || ( year % 4 == 0 && year % 100 != 0 ) {
                m[1] += 1
            }
            
            
            for i in 0..<month - 1 {
                
                res += m[i]
            }
            
            return res + day
            
        }
        
        return 0
        
    }
    
    
}
