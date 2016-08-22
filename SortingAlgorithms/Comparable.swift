//
//  Comparable.swift
//  SortingAlgorithms
//
//  Created by Sunayna Jain on 8/21/16.
//  Copyright © 2016 LittleAuk. All rights reserved.
//

import UIKit

// Conformance to Comparable protocol example
struct Date {
  let year: Int
  let month: Int
  let day: Int
  
  init(year: Int, month: Int, day: Int) {
    self.year = year
    self.month = month
    self.day = day
  }
}


extension Date: Comparable {}
  
  func < (lhs: Date, rhs: Date) -> Bool {
  if lhs.year != rhs.year {
    return lhs.year < rhs.year
  } else if lhs.month != rhs.month {
    return lhs.month < rhs.month
  } else {
    return lhs.day < rhs.day
    }
  }
  
  
  func == (lhs: Date, rhs: Date) -> Bool {
    return lhs.year == rhs.year && lhs.month == rhs.month
  && lhs.day == rhs.day
  }
