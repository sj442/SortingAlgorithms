//
//  SelectionSort.swift
//  SortingAlgorithms
//
//  Created by Sunayna Jain on 8/21/16.
//  Copyright © 2016 LittleAuk. All rights reserved.


import UIKit

extension Array {
  
  mutating func swap(_ i1: Int, i2: Int) {
    let temp = self[i1]
    self[i1] = self[i2]
    self[i2] = temp
  }
}

// uses N squared/2 compares  ((N -1) + (N -2) + ..)
// uses N exchanges
// O(N^2)
  
func selectionSort<T: Comparable>(array: [T]) -> [T] {
  var a = array
  let N = array.count
  for i in 0..<N {
    var min = i
    for j in i+1..<N {
      if array[j] < array[min] {
        min = j
      }
    }
    a.swap(min, i2: i)
  }
  return a
}

