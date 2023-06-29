//
//  Array+Filtering.swift
//  WeatherApp
//
//  Created by Danni André on 28/6/23.
//

import Foundation

public extension Array where Element: Hashable {
  static func removeDuplicates(_ elements: [Element]) -> [Element] {
    var seen = Set<Element>()
    return elements.filter{ seen.insert($0).inserted }
  }
}
