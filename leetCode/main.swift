//
//  main.swift
//  leetCode
//
//  Created by clt on 2019/4/8.
//  Copyright © 2019 clt. All rights reserved.
//

import Foundation



// 1  两数只和
func test1() {
    
    print(Solution1.twoSum4([17,1,2,18], 20))

}

// 2 两数相加
func test2() {
    let l1 = ListNode(2)
    l1.next = ListNode(4)
    l1.next?.next = ListNode(3)
    
    let l2 = ListNode(5)
    l2.next = ListNode(6)
    l2.next?.next = ListNode(4)
    
    var l3 = Solution2.addTwoNumbers(l1, l2)
    //print(l3?.val)
    
    while l3 != nil {
        print(l3?.val ?? 0);
        l3 = l3?.next
    }
}


// 3无重复字符的最长子串
func test3()  {
    print(Solution3.lengthOfLongestSubstring1("abcabcbb"))
}

// 4寻找两个正序数组的中位数,题目提示传入的数组为正序（从小到大排列)
func test4()  {
   print(Solution4.findMedianSortedArrays2([1], [3,4]))
}


//给定一个字符串 s，找到 s 中最长的回文子串。你可以假设 s 的最大长度为 1000。
func test5()  {
    print(Solution5.longestPalindrome2("ab"))
}



//将一个给定字符串根据给定的行数，以从上往下、从左到右进行 Z 字形排列。

func test6()  {
    print(Solution6.convert("LEETCODEISHIRING", 4))
}

// 链表创建和删除
func test7() {
    
    let l = ListNode.createListTail1(n: 8)
    l?.printListTail()
    print("\n\n")
    l?.clearList()
    
}


// 堆排序
func test8()  {
    //var array = [7,1,3,10,5,2,8,9,6]
    var array = [4,6,8,5,9]

    HeapSort(arr: &array)
    
    print(array)
}

//// 冒泡
func test9()  {
    var array = [9,8,7,7,10,2,20]
    bubbleSortOptimization(&array)
    print(array)
}

// 冒泡基础更改的鸡尾酒排序 从左向右 从右向左 双重排序
func test10() {
    var array = [2,3,4,5,6,7,8,1]
    cocktailSort(&array)
    print(array)
}


//计数排序
func test11()  {
    var countAry = [9,3,5,4,9,1,2,7,8,1,3,6,5,3,4,0,10,9 ,7,9]
     //系统排序
    //countAry.sort()
     //[0, 1, 1, 2, 3, 3, 3, 4, 4, 5, 5, 6, 7, 7, 8, 9, 9, 9, 9, 10]

    countSort(&countAry)
    print(countAry)
    // [0, 1, 1, 2, 3, 3, 3, 4, 4, 5, 5, 6, 7, 7, 8, 9, 9, 9, 9, 10]
}

// 链表是否有环
func test12()  {
    
    let node1 = ListNode(5)
    let node2 = ListNode(3)
    let node3 = ListNode(7)
    let node4 = ListNode(2)
    let node5 = ListNode(6)
    // 头指针为node1
    node1.next = node2
    node2.next = node3
    node3.next = node4
    node4.next = node5
    node5.next = node2
    
    print(ListNode.isCycle(node1))
}

// 链表的环节点 和环的长度
func test13() {
    let node1 = ListNode(5)
    let node2 = ListNode(3)
    let node3 = ListNode(7)
    let node4 = ListNode(2)
    let node5 = ListNode(6)
    // 头指针为node1
    node1.next = node2
    node2.next = node3
    node3.next = node4
    node4.next = node5
    node5.next = node2
    
    // 链表环 的 起始点
    if let node = ListNode.getCycleNode(node1){
        // 链表环的长度
        print(ListNode.getCycleLength(node))
    }
    
}


// 最小栈
func test14() {
    
    let minStack = MinStack()
    minStack.push(1)
    minStack.push(3)
    minStack.push(10)
    minStack.push(-1)
    let popVal = minStack.pop()
    print(popVal ?? 0)
    print(minStack.stack)
    print(minStack.min_stack)
    
}




/*
 
 小灰的算法之旅
 
 给出一个正整数，找出这个正整数所有数字全排列的下一个数。
 说通俗点就是在一个整数所包含数字的全部组合中，找到一个大于且仅大于原 数的新整数。让我们举几个例子。
 如果输入12345，则返回12354。 如果输入12354，则返回12435。
 */
func test15() {
    var numbers = [1,2,3,4,5]
    for _ in 0..<10 {
        numbers = NumberOperation.findNearestNumber(numbers)
        print(numbers)
    }
    
    
}


// 测试栈
func test16() {

//    var stack = Stack<Int>()
//    stack.capacity = 3
//    stack.push(element: 1)
//
//    stack.push(element: 2)
//
//    stack.push(element: 5)
    
    
    var stack:Stack = [1,2,3]
    
    stack.push(element: 4)
    
    print(stack)
    

    
}

func test17()  {
    
    let sum =
    BigNumber.bigNumberSum(bigNumberA: "1234552342342131232132131231231231231234", bigNumberB: "234343441233344324344444")
    
    print(sum)
    
}

func test18()  {
    let result = mooreVoting([1,2,2,2,2,1,2,1,5])
    
    print(result)
}


// 两个数组的交集
func test19() {

    var nums1 = [1,2,3,4,4,5,6,7,10];
    var nums2 = [1,2,3,4,10]
    
    let result = Solution350.sortIntersect(&nums1, &nums2)
    print(result)
}

// 最长公共前缀
func test20()  {
    
    let result = Solution14.longestCommonPrefix(["dog","racecar","car"])
    print(result)
    
}

// 189反转数组
func test21()  {
    
    var testArray = [1,2,3,4,5,6,7]
    Solution189.rotate(&testArray, 7)
    print(testArray)
    
}



// 27题 移除元素
func test22()  {
    var testArray = [0,1,2,2,3,0,4,2]
    let result = Solution27.removeElement(&testArray, 2)
    
}

// 26题 删除有序的重复数字
func test23()  {
    var testArray = [0,0,1,1,1,2,2,3,3,4]
    let result = Solution26.removeDuplicates(&testArray)
    print(result)
}

// 加一
func test24()  {
    
    print(Solution66.plusOne([0]))
}

// 122题
func test25() {
    
    let result = Solution122.maxProfit([7,6,4,3,1])
    print(result)
}

func test26() {
    let result = Solution15.threeSum([-1,0,1,2,-1,-4])
    print(result)
    
}

func test27() {
    let node = ListNode(1)
    node.next = ListNode(2)
    node.next?.next = ListNode(3)
    node.next?.next?.next = ListNode(4)
    
    let result = Solution19.removeNthFromEnd(node, 2)
    
    result?.printListTail()
}

func test28() {
    
    let list1 = [1,2,4]
    let list2 = [1,3,4]
    let node1 = ListNode.createNodeToList(list1)
    let node2 = ListNode.createNodeToList(list2)
    
    let result = Solution21.mergeTwoLists(node1, node2)
    result?.printListTail()
    
}

func test29()  {
    
    let resul = Solution35.searchInsert([1,3,5,6], 2)
    print(resul)
    
}

func test30()  {
    let result = Solution53.maxSubArray([-2,1,-3,4,-1,2,1,-5,4])
    print(result)
}

func test31()  {
    
    var nums1 = [1,2,3,0,0,0]
    
    Solution88.merge(&nums1, 3, [2,5,6], 3)
}


func test32()  {
    
    
  let result =  Solution136.singleNumber([1,2,2,1,4,4,6])
    print(result)
}

func test33()  {
    let result = Solution167.twoSum([2,7,11,15], 13)
    print(result)
}


func test34()  {
    let result = Solution217.containsDuplicate([1,2,3,1])
    print(result)
}

func test35()  {
    
   var nums = [1,2,0,6]
    var j = 0
    for i in 0..<nums.count {
        
        if nums[i] != 0 {
            if nums[i] != nums[j] {
                nums[j] ^= nums[i]
                nums[i] ^= nums[j]
                nums[j] ^= nums[i]
            }
            j += 1
        }
    }
    
    print(nums)
    
}

func test36()  {
 
    var nums = [1,2,45,6,8,3,5,6,9,0,11,12,20]
    
    var i = 0 , j = nums.count - 1
    while i <= j {
        
        if nums[i] % 2 == 0  {
            if nums[j] % 2 != 0  {
                let temp = nums[i]
                nums[i] = nums[j]
                nums[j] = temp
                i += 1
            }else{
                j -= 1
            }
           
        }else{
            i += 1
        }
        
    }
    
    print(nums)
    
    
}

func test37(_ num:Int){
    guard num > 0 else {
         print("传入的值小于0")
        fatalError()
    }
    let letterArray: [String] = [
        "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
    ]
    var result = ""
    if num <= 26 {
        result = letterArray[num - 1]
        print("结果 \(result)")
    }else{
        
        var cient = num
        let remaind = num % 26
        while cient > 26 {
            cient = cient / 26
        }
        
        result += letterArray[cient - 1]
        result += letterArray[remaind - 1]
    }
    print(result)
}


func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    var map : [Int:Int] = [Int:Int]()
    for i in nums {
        map[i] = i
    }
    var result = [Int]()
    for i in 1...nums.count{
        if let _ = map[i]{
            
        }else{
            result.append(i)
        }
    }
    
    return result
}


func pivotIndex(_ nums: [Int]) -> Int {
    
    var leftSum  = 0
    var rightSum = nums.reduce(0, +)
    for (i,e) in nums.enumerated(){
        rightSum -= e
        if leftSum  == rightSum{
            return i
        }
        leftSum += e
    }
    
    return -1
}

func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
    var image = image
    for i in 0..<image.count {
        var left = 0 , right = image.count - 1
        while left < right {
            if image[i][left] == image[i][right] {
                image[i][left] ^= 1
                image[i][right] ^= 1
            }
            left += 1
            right -= 1
        }
        if left == right{
            image[i][left] ^= 1
        }
        
    }
    return image
}


func maxArea(_ height: [Int]) -> Int {
    
    var left = 0 , right = height.count - 1
    var ans = 0
    while left < right {
        let area = min(height[left], height[right]) * (right - left)
        ans = max(area, ans)
        if height[left] <= height[right]{
            left += 1
        }else{
            right -= 1
        }
    }
    
    return ans
}


// + 1
func plusOne(_ digits: [Int]) -> [Int] {

    var digits = digits
    var index = digits.count - 1
    while index >= 0 {
        
        digits[index] = digits[index] + 1
        digits[index] = digits[index] % 10
        if  digits[index] != 0 {
            return digits
        }
        
        index -= 1
    }
    
    digits.insert(1, at: 0)
    
    
    return digits
}


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

    
    var map = [Int:Int]()
    
    for (i,e) in nums.enumerated() {
       let remainder = target - e
        if map.keys.contains(remainder){
            if let index = map[remainder] , index != i {
                return [index ,i]
            }
        }
        map[e] = i
    }
    
    
    return []
}

// 有效的括号
func isValid(_ s: String) -> Bool {

    guard s.count % 2 == 0 else { return false}
    let map:[Character:Character] = [
        "(":")",
        "[":"]",
        "{":"}"]
    var stack:[Character] = [Character]()
    for char  in s {
        if map[char] != nil {
            stack.append(char)
        }else{
            if stack.isEmpty {
                return false
            }
            else if map[stack.last!] != char{
                return false
            }else{
                stack.popLast()
            }
        }
    }
    
    return stack.isEmpty
}

// 接雨水
func trap(_ height: [Int]) -> Int {
    
//    if height.count == 0  {return 0}
//    var sum = 0
//    var leftMaxArray = Array(repeating: 0, count: height.count)
//    leftMaxArray[0] = height[0]
//    var i = 1
//    while i < height.count {
//        leftMaxArray[i] = max(leftMaxArray[i-1], height[i])
//        i += 1
//    }
//
//    var rightMaxArray = Array(repeating: 0, count: height.count)
//    rightMaxArray[height.count - 1] = height[height.count - 1]
//    var j = height.count - 2
//    while j >= 0 {
//        rightMaxArray[j] = max(rightMaxArray[j + 1], height[j])
//        j -= 1
//    }
//
//    for k in 0..<height.count{
//        sum += min(leftMaxArray[k], rightMaxArray[k]) - height[k]
//    }
//
//    return sum
    
    if height.count == 0 {return 0}
    
    var sum = 0
    var left = 0 ,right = height.count - 1
    var leftMax = 0  , rightMax = 0
    while left < right {
        leftMax = max(leftMax, height[left])
        rightMax = max(rightMax, height[right])
        if height[left] < height[right]{
            sum += leftMax - height[left]
            left += 1
        }else{
            sum += rightMax - height[right]
            right -= 1
        }
    }
    

    return sum
}




//print(trap([0,1,0,2,1,0,1,3,2,1,2,1]))




//test35()
//test37(3334)




