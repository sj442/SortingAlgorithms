//
//  MergeSort.swift
//  SortingAlgorithms
//
//  Created by Sunayna Jain on 8/22/16.
//  Copyright © 2016 LittleAuk. All rights reserved.


import UIKit

struct MergeSort<T: Comparable> {
  
  var array: [T]
  
  init(withArray array: [T]) {
    self.array = array
  }
  
  mutating func sort() {
    let n = array.count
    let mid = n/2
    var i = 0
    var j = mid
    var k = 0
    var aux = array
    while i < mid && j <= n {
      if aux[i] <= aux[j] {
        array[k] = aux[i]
        i += 1
      } else {
        array[k] = aux[j]
        j += 1
      }
      k += 1
    }
    
    if i < mid {
      while i <= mid {
        array[k] = aux[i]
        k += 1
        i += 1
      }
    }
    
    print("sorted array: \(array)")
  }
  
}