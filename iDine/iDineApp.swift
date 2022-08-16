//
//  iDineApp.swift
//  iDine
//
//  Created by Thiago Orniz Martin on 2022-08-03.
//

import SwiftUI

@main
struct iDineApp: App {
  @StateObject var order = Order()

  var body: some Scene {
    WindowGroup {
      MainView()
        .environmentObject(order)
    }
  }
}
