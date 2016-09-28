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
func shellSort<T: Comparable>(array: [T]) -> [T] {
  var a = array
  var h = 1
  let N = array.count
  while h < N/3 {
    h = 3 * h + 1
  }
  
  while h >= 1 {
    for i in h..<N {
      var j = i
      while j>=h && array[j] < array[j - h] {
        a.swap(j, i2: j-h)
        j -= h
      }
    }
    h = h/3
  }
  return a
}

