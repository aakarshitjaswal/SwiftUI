//
//  CardView.swift
//  Fruits
//
//  Created by aakarshit on 19/11/23.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //FRUIT: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red:0,green:0,blue:0,opacity: 0.2), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                 
                //FRUIT: TITLE
                Text(fruit.title)
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(white: 1, opacity: 0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                //FRUIT: HEADLINE
                Text (fruit.headline)
                    .foregroundStyle(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                //BUTTON: START
                StartButtonView()
                
            }//: VSTACk
        }//: ZSTACk
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth:  .infinity, minHeight: 0, maxHeight: .infinity)
        .background(LinearGradient(gradient:Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}


#Preview {
    FruitCardView(fruit: fruitsData[9])
}
