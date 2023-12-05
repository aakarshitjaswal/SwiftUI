//
//  FruitNutrientsView.swift
//  Fruits
//
//  Created by Aakarshit Jaswal on 05/12/23.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: PROPERTIES
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                Text("Hello, World!")
            }
        }
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData[0])
        .preferredColorScheme(.dark)
        .padding()
}
