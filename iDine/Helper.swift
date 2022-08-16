//
//  Helper.swift
//  iDine
//
//  Created by Thiago Orniz Martin on 2022-08-03.
//

import Foundation

extension Bundle {
  func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError()
    }

    guard let data = try? Data(contentsOf: url) else {
      fatalError()
    }

    guard let loaded = try? JSONDecoder().decode(T.self, from: data) else {
      fatalError()
    }
    return loaded
  }
}
