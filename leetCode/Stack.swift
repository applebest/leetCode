//
//  Stack.swift
//  leetCode
//
//  Created by clt on 2021/1/29.
//  Copyright © 2021 clt. All rights reserved.
//

// 自定义栈
import Foundation

struct Stack<T> {
    
    // 泛型数组
    private var elements = [T]()
    
    // 个数
    public var count:Int {
        return elements.count
    }
    
    //容量
    public var capacity:Int {
        
        get{
            return elements.capacity
        }
        
        set{
            elements.reserveCapacity(newValue)
        }
    }
    
    public init(){}
    
    
    // 压栈
    public mutating func push(element:T) {
        if count == capacity {
            fatalError("栈已满 ，不能再执行入栈")
        }
        
        self.elements.append(element)
    }
    
    @discardableResult     // 抑制函数或者方法返回值被调用而没有使用其结果时的警告
    // 出栈
    public mutating func pop() -> T? {
        if count == 0 {
            fatalError("占已空")
        }
        
        return self.elements.popLast()
    }
    
    // 返回栈顶元素
    public func peek() -> T? {
           // 返回数组elements的最后一个元素(但是不移除该元素)
           return elements.last
    }
    
    // 清空栈中所有元素
    public mutating func clear() {
        elements.removeAll()
    }
    
    public func isEmpty() -> Bool {
        return elements.isEmpty
    }
    
    
    // 栈是否已满
    public func isFull() -> Bool {

        if count == 0 {
            return false
        }
        
        return count == elements.capacity
    }
    
}


// 遵循协议自定义栈 打印格式
extension Stack : CustomStringConvertible,CustomDebugStringConvertible {
    
    var description: String {
         // 返回数组的打印格式
        return elements.debugDescription
    }
    
    var debugDescription: String {
        return elements.debugDescription
    }
}


extension Stack:ExpressibleByArrayLiteral {
    typealias ArrayLiteralElement = T
    init(arrayLiteral elements: T...) {
        self.init()
        self.elements = elements
    }
    
}

