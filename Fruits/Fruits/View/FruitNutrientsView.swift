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
            //Automatically handles expansion of a list with all the items inside of it.
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    HStack {
                        Text(nutrients[item])
                        Spacer()
                        Text(fruit.nutrition[item])
                    }
                }
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
