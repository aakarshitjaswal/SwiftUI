//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Aakarshit Jaswal on 02/12/23.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: Fruit
    
    var body: some View {
        Text(fruit.title)
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
