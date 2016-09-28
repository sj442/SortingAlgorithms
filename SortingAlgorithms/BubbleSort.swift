//
//  BubbleSort.swift
//  SortingAlgorithms
//
//  Created by Sunayna Jain on 9/27/16.
//  Copyright © 2016 LittleAuk. All rights reserved.
//

import UIKit

func bubbleSort<T: Comparable>(array: [T]) -> [T] {
  var a = array
  
  for _ in 0..<a.count {
    // Track number of elements swapped during a single array traversal
    var numberOfSwaps = 0
    
    for j in 0..<a.count - 1 {
      // Swap adjacent elements if they are in decreasing order
      if (a[j] > a[j + 1]) {
        let temp = a[j+1]
        a[j+1] = a[j]
        a[j] = temp
        numberOfSwaps += 1
      }
    }
    
    // If no elements were swapped during a traversal, array is sorted
    if (numberOfSwaps == 0) {
      break
    }
  }
  
  return a
}

