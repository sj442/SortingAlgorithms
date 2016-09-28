//
//  InsertionSort.swift
//  SortingAlgorithms
//
//  Created by Sunayna Jain on 8/21/16.
//  Copyright © 2016 LittleAuk. All rights reserved.


import UIKit

// Best case: if the array is already in ascending order, insertion sort will make N -1 compares and 0 Exchanges
// for randomly ordered array, insertion sort uses ~ N^2/4 compares and N^2/4 exchanges
// Worst case: if the array is ordered in descending order, insertion sort will use ~ N^2/2 compares and N^2/2 exchanges (1 + 2 ..N-1)
// for partially sorted arrays, the number of exchanges is equal to the number of inversions (hence runsi n linear time)

func insertionSort<T: Comparable>(array: [T]) -> [T] {
  var a = array
  let N = a.count
  for i in 1..<N {
    var j = i
    while j > 0 && array[j] < array[j-1] {
      a.swap(j, i2: j-1)
      j -= 1
    }
  }
  return a
}

