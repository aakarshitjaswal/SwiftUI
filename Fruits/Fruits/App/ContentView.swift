//
//  ContentView.swift
//  Fruits
//
//  Created by aakarshit on 19/11/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
