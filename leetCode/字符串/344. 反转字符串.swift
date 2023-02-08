//
//  344. 反转字符串.swift
//  leetCode
//
//  Created by clt on 2021/8/20.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation

class Solution344 {
    fileprivate  var mapArray:[Bool]?
    
    
    func reverseString(_ s: inout [Character]) {
      
        mapArray = Array.init(repeating: false, count: 1000001)
        
        var start = 0 , end = s.count - 1
        while start < end {
            let temp = s[start]
            s[start] = s[end]
            s[end] = temp
            start += 1
            end -= 1
        }
    }
    
   static func solve ( _ str: String) -> String {
           
        var chars = Array(str)
        
       var l = 0 , r = chars.count - 1
       while l < r {
           let temp = chars[l]
           chars[l] = chars[r]
           chars[r] = temp
           l += 1
           r -= 1
       }
       
      
        return String(chars[0...chars.count - 1])
    }
    
    
}
