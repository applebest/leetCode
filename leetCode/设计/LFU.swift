//
//  LFU.swift
//  leetCode
//
//  Created by clt on 2023/3/10.
//  Copyright © 2023 clt. All rights reserved.
//

import Foundation


/*
 
 LFU是Least Frequently Used（最不经常使用）的缩写，是一种常见的缓存淘汰算法。与LRU算法不同的是，LFU算法是基于访问次数来淘汰缓存数据的。

 在LFU算法中，每个缓存数据都有一个访问计数器，用于记录该数据被访问的次数。每次访问缓存数据时，该数据的访问计数器就会加1。当缓存空间不足时，可以从缓存中淘汰访问次数最少的数据，即访问计数器最小的数据。

 在实际应用中，LFU算法被广泛应用于缓存、数据库等领域。与LRU算法相比，LFU算法更加关注缓存数据的访问频率，适用于对访问次数较少的数据进行淘汰的场景。然而，由于需要维护每个缓存数据的访问计数器，LFU算法的实现较为复杂。
 
*/

class LFUCache {
    
    var capacity:Int = 0
    var cache:[Int:(value:Int ,count:Int)] = [:]
    
    init(capacity: Int) {
        self.capacity = capacity
    }
    
    func get(_ key:Int) -> Int {
        
        if let value = cache[key] {
            // 更新访问计数器
            cache[key] = (value:value.value,count:value.count + 1)
            return value.value
            
        }else{
            return -1
        }
    }
    
    func put(_ key:Int ,_ value:Int) {
        if capacity == 0 {return}
        // 已存在 ，更新访问次数
        if let oldValue = cache[key]{
            cache[key] = (value:value,count:oldValue.count + 1)
        }else{
            
            // 缓存已满 , 汰访问次数最少的数据
            if cache.count == capacity {
                let minCount = cache.values.map({$0.count}).min()!
                let minKeys = cache.filter({$0.value.count == minCount}).map({$0.key})
                if let keyToRemove = minKeys.first {
                    cache.removeValue(forKey: keyToRemove)
                }
            }
            // 将新数据加入缓存，并设置访问计数器为1
            cache[key] = (value:value,count:1)
        }
        
    }
    
    
    
    
    
    
    
}

