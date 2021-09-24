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
}
