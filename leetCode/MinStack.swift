//
//  MinStack.swift
//  leetCode
//
//  Created by clt on 2021/1/25.
//  Copyright © 2021 clt. All rights reserved.
//

// 最小栈实现
import Foundation

class MinStack {
    
    var stack = [Int]()
    var min_stack = [Int]()
    
    func push(_ x: Int) {
        stack.append(x)
        if min_stack.isEmpty || x <= min_stack.last ?? 0 {
            min_stack.append(x)
        }
    }
    
    func pop() -> Int? {
        if stack.popLast() == min_stack.last {

            return min_stack.popLast()
        }
        return stack.popLast()
    }
    
    
    func top() -> Int? {
        return stack.last
    }
    
    func getMin() -> Int? {
        return min_stack.last
    }
    
}
