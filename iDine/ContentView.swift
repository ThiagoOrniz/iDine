//
//  ContentView.swift
//  iDine
//
//  Created by Thiago Orniz Martin on 2022-08-03.
//

import SwiftUI

struct ContentView: View {
//  let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")

  let menu = [MenuSection(id: UUID(), name: "name", items: [])]

  var body: some View {
    NavigationView {
      List {
        ForEach(menu) { section in
          Section(header: Text(section.name)) {
            ForEach(section.items) { item in
              NavigationLink(destination: Text(item.name)) {
                ItemDetail(item: item)
                ItemRow(item: item)
              }
            }
          }
        }
      }
      .navigationTitle("Menu")
      .listStyle(GroupedListStyle())
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
      ContentView()
  }
}
