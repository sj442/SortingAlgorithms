//
//  QuickSort.swift
//  SortingAlgorithms
//
//  Created by Sunayna Jain on 9/22/16.
//  Copyright © 2016 LittleAuk. All rights reserved.
//

import UIKit


func quickSort<T: Comparable>(_ array: inout [T]) {
    quickSort(&array, left: 0, right: array.count - 1)
  }
  
func partition<T: Comparable>(_ array: inout [T], left: Int, right: Int)  -> Int {
    var i = left
    var j = right
    let pivot = array[(left + right)/2]
    var temp: T

    while i <= j {
      while array[i] < pivot {
        i += 1
      }
      
      while array[j] > pivot {
        j -= 1
      }
      
      if i <= j {
        temp = array[i]
        array[i] = array[j]
        array[j] = temp
        i += 1
        j -= 1
      }
    }
    
    return i
  }
  
  
fileprivate func quickSort<T: Comparable>(_ array: inout [T] ,left: Int, right: Int) {
    let index = partition(&array, left: left, right: right)
    if (left < index - 1) {
      quickSort(&array, left: left, right: index - 1)
    }
    if (index < right) {
      quickSort(&array, left: index, right: right)
    }
  }

