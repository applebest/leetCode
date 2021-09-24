//
//  寻找全排列的下一个数.swift
//  leetCode
//
//  Created by clt on 2021/1/28.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation

class NumberOperation {
    
    static func findNearestNumber(_ numbers:[Int]) -> [Int]{
        
        // 1. 从后向前查看逆序区域，找到逆序区域的前一位，也就是数字置换的边界。
        let index = findTransferPoint(numbers);
        if index == 0 {
            return []
        }
        
        var numbersCopy = numbers
        // 2. 让逆序区域的前一位和逆序区域中大于它的最小的数字交换位置。
        numbersCopy = exchangeHead(numbersCopy, index: index)
        
        //3. 把原来的逆序区域转为顺序状态 。
        
        numbersCopy = reverse(numbersCopy, index: index)
        
        return numbersCopy
    }
    
    private static func reverse(_ numbers:[Int], index: Int) -> [Int] {
        var num = numbers
        
        var i = index
        var j = num.count - 1
        while i<j {
            let temp = num[i]
            num[i] = num[j]
            num[j] = temp
            i += 1
            j -= 1
        }
        return num
    }
    
    
     // 寻找两数之间最小数
    private static func exchangeHead(_ numbers:[Int] , index:Int) -> [Int]{
        
        let head = numbers[index - 1]
        var num = numbers
        for i in (1...num.count - 1).reversed() {
            if head < num[i] {
                num[index - 1] = num[i]
                num[i] = head
                break
            }
        }
        
        return num
    }
    
    
    // 从后查找大的数字
    private static func findTransferPoint(_ numbers:[Int]) -> Int {
        
        for i in (1...(numbers.count-1)).reversed() {
            if numbers[i]  > numbers[i - 1]{
                return i
            }
        }
        
        return 0
    }
    
    
}
