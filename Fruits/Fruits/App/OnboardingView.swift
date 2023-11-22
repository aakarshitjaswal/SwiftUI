//
//  OnboardingView.swift
//  Fruits
//
//  Created by Aakarshit Jaswal on 21/11/23.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: PROPERITIES
    
    var fruits: [Fruit] = fruitsData
    // MARK: BODY
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }//: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

#Preview {
    OnboardingView(fruits: fruitsData)
}
