//
//  FruitRowView.swift
//  Fruits
//
//  Created by Aakarshit Jaswal on 26/11/23.
//

import SwiftUI

struct FruitRowView: View {
    
    // MARK: PROPERTIES
    
    var fruit: Fruit
    
    // MARK: BODY
    var body: some View {
        HStack {
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(white: 0, opacity: 0.3), radius: 3, x:3, y:3)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(Color.secondary)
            }
        }//: HSTACK
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
