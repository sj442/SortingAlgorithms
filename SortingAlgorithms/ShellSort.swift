//
//  ShellSort.swift
//  SortingAlgorithms
//
//  Created by Sunayna Jain on 8/21/16.
//  Copyright © 2016 LittleAuk. All rights reserved.
//

import UIKit

// Knuth's implementation
// h = 3x + 1
struct ShellSort<T: Comparable> {
  
  var array: [T]
  
  init(witharray array: [T]) {
    self.array = array
  }
  
  
  mutating func sort() {
    var h = 1
    let N = array.count
    while h < N/3 {
      h = 3 * h + 1
    }
    
    while h >= 1 {
      for i in h..<N {
        var j = i
        while j>=h && array[j] < array[j - h] {
          array.swap(j, i2: j-h)
          j -= h
        }
      }
      h = h/3
    }
    print("sorted array: \(array)")
  }
  
}
