//
//  OnboardingView.swift
//  Fruits
//
//  Created by Aakarshit Jaswal on 21/11/23.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: PROPERITIES
    
    
    // MARK: BODY
    
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            }//: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

#Preview {
    OnboardingView()
}
