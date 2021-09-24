//
//  大整数求和.swift
//  leetCode
//
//  Created by clt on 2021/1/29.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation

class BigNumber {
    
  static  func bigNumberSum(bigNumberA:String ,bigNumberB:String) -> String {
    
    
    // 获取哪个字符串的长度最大
    let maxLength =  max(bigNumberA.count, bigNumberB.count)
    // 最大长度+1  （目的是方便进位留空间)
    var arrayA = Array(repeating: "0", count:maxLength+1)
    var next = 0
    // 倒序遍历放入数组内
    // 12345
    // 54321
    for ele in bigNumberA.reversed() {
        arrayA[next] = String(ele)
        next += 1
    }


    next = 0
    var arrayB = Array(repeating: "0", count:maxLength+1)

    // 逆序另一个相加的数
    for ele in bigNumberB.reversed() {
        arrayB[next] = String(ele)
        next += 1
    }

    var result = Array(repeating: 0, count: maxLength+1)
    // 遍历
    for i in 0..<result.count {
        var temp = result[i]
        temp += Int(arrayA[i]) ?? 0
        temp += Int(arrayB[i]) ?? 0
        if temp >= 10 {
            temp = temp - 10
            result[i+1] = 1
        }
        result[i] = temp

    }

    var subStr = ""
    var findFirst = false
    for i in (0..<result.count).reversed() {
        if !findFirst {
            if result[i] == 0 {
                continue
            }
            findFirst = true
        }

        subStr.append(String(result[i]))

    }

        return subStr
    }

}
