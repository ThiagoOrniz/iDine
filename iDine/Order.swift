//
//  Order.swift
//  iDine
//
//  Created by Thiago Orniz Martin on 2022-08-03.
//

import Foundation

class Order: ObservableObject {
  @Published var items = [MenuItem]()

  var total: Int {
    if items.count > 0 {
      return items.reduce(0) {$0 + $1.price }
    } else {
      return 0
    }
  }

  func add(item: MenuItem) {
    items.append(item)
  }

  func remove(item: MenuItem) {
    if let index = items.firstIndex(where: { $0 == item }) {
      items.remove(at: index)
    }
  }
}
