//
//  MergeSort.swift
//  SortingAlgorithms
//
//  Created by Sunayna Jain on 8/22/16.
//  Copyright © 2016 LittleAuk. All rights reserved.


import UIKit

// Top down implementation
func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
  return sort(array)
}

fileprivate func sort<T: Comparable>(_ array: [T]) -> [T] {
  guard array.count > 1 else {
    return array
  }
  let mid = array.count/2
  
  let leftArray = sort(Array(array[0..<mid]))
  let rightArray = sort(Array(array[mid..<array.count]))
  return merge(leftArray, rightArray: rightArray)
}


fileprivate func merge<T: Comparable>(_ leftArray: [T], rightArray: [T]) -> [T] {
  var leftIndex = 0
  var rightIndex = 0
  
  var orderedArray = [T]()
  
  while leftIndex < leftArray.count && rightIndex < rightArray.count {
    if leftArray[leftIndex] <= rightArray[rightIndex] {
      orderedArray.append(leftArray[leftIndex])
      leftIndex += 1
    } else {
      orderedArray.append(rightArray[rightIndex])
      rightIndex += 1
    }
  }
  
  while leftIndex < leftArray.count {
    orderedArray.append(leftArray[leftIndex])
    leftIndex += 1
  }
  
  while rightIndex < rightArray.count {
    orderedArray.append(rightArray[rightIndex])
    rightIndex += 1
  }
  return orderedArray
}
