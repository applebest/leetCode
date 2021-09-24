//
//  6. Z 字形变换.swift
//  leetCode
//
//  Created by clt on 2020/11/27.
//  Copyright © 2020 clt. All rights reserved.
//

import Foundation

class Solution6 {
    
    /*
     将一个给定字符串根据给定的行数，以从上往下、从左到右进行 Z 字形排列。
     比如输入字符串为 "LEETCODEISHIRING" 行数为 3 时，排列如下：
     L   C   I   R
     E T O E S I I G
     E   D   H   N
     之后，你的输出需要从左往右逐行读取，产生出一个新的字符串，比如："LCIRETOESIIGEDHN"。

     请你实现这个将字符串进行指定行数变换的函数：

     string convert(string s, int numRows);
     示例 1:

     输入: s = "LEETCODEISHIRING", numRows = 3
     输出: "LCIRETOESIIGEDHN"
     示例 2:

     输入: s = "LEETCODEISHIRING", numRows = 4
     输出: "LDREOEIIECIHNTSG"
     解释:

     L     D     R
     E   O E   I I
     E C   I H   N
     T     S     G
     
     */
    class func convert(_ s: String, _ numRows: Int) -> String {
        
        if numRows < 2 {
            return s
        }
        var strArr = Array(repeating: "", count: numRows)
        let n = numRows * 2 - 2
        for (index,char) in s.enumerated() {
            //L E E T C O D E I S H I R I N G
            //
            let num = index % n
            if num < numRows {
                strArr[num].append(char)
                print("i==\(index) \(strArr[num])")
            }else{
                strArr[n - num].append(char)
                print("i==\(index) \(strArr[n - num])")

            }
        }
        
                
        return strArr.joined()
    }
}
