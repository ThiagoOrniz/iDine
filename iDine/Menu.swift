//
//  Menu.swift
//  iDine
//
//  Created by Thiago Orniz Martin on 2022-08-03.
//

import Foundation

struct MenuSection: Codable, Identifiable {
  var id: UUID
  var name: String
  var items: [MenuItem]
}

struct MenuItem: Codable, Equatable, Identifiable {
  var id: UUID
  var name: String
  var photoCredit: String
  var price: Int
  var restrictions: [String]
  var description: String

  var mainImage: String {
    name.replacingOccurrences(of: " ", with: "-").lowercased()
  }

  var thumbnailImage: String {
    "\(mainImage)-thumb"
  }

  #if DEBUG
  static let example = MenuItem(id: UUID(), name: "example", photoCredit: "example", price: 0, restrictions: ["example"], description: "example")
  #endif
}
