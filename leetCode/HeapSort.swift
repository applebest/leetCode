//
//  HeapSort.swift
//  leetCode
//
//  Created by clt on 2021/1/19.
//  Copyright © 2021 clt. All rights reserved.
//

import Foundation



/**
 * 调整大顶堆（仅是调整过程，建立在大顶堆已构建的基础上）
 */
func adjustHeap(arr:inout Array<Int>,i:Int,length:Int){
    var i = i;
    let temp = arr[i];//先取出当前元素i
    var k=2*i+1
    while k<length {//从i结点的左子结点开始，也就是2i+1处开始
        if(k+1<length && arr[k]<arr[k+1]){//如果左子结点小于右子结点，k指向右子结点
            k+=1;
        }
        if(arr[k] > temp){//如果子节点大于父节点，将子节点值赋给父节点（不用进行交换）
            arr[i] = arr[k];
            i = k;
        }else{
            break;
        }
        k=k*2+1
    }
    arr[i] = temp;//将temp值放到最终的位置
}


// 小顶堆
func upAdjust(_ arr:inout [Int], _ parent:Int,_ length:Int) {
        var parentIndex = parent
        let parentVal = arr[parentIndex]
        var child = 2*parentIndex+1//2n+1:左孩子,2n+2:右孩子
        //把最小的数据放在大于孩子节点的位置
        while child<length {
        //取左右孩子节点的最大节点
        if child+1<length && arr[child]>arr[child+1]{
            child += 1
        }
        if parentVal<arr[child]{//父节点大于左右孩子节点
            break
        }
            arr[parentIndex] = arr[child]
        parentIndex = child

        child = 2*child+1
        }
        arr[parentIndex] = parentVal
}

func HeapSort(arr:inout Array<Int>) {
        //1.构建大顶堆
        for i in (0...(arr.count/2-1)).reversed(){
            //从第一个非叶子结点从下至上，从右至左调整结构
            adjustHeap(arr: &arr, i: i, length: arr.count)
        }
        //2.调整堆结构+交换堆顶元素与末尾元素
        for j in  (1...(arr.count-1)).reversed(){
//            将堆顶元素与末尾元素进行交换
//            let temp =  arr[0]
//            arr[0] = arr[j]
//            arr[j] = temp
            arr.swapAt(0, j)
            adjustHeap(arr: &arr, i: 0, length: j)//重新对堆进行调整
        }
    }
    


