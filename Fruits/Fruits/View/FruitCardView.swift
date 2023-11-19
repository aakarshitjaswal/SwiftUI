//
//  CardView.swift
//  Fruits
//
//  Created by aakarshit on 19/11/23.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //FRUIT: Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red:0,green:0,blue:0,opacity: 0.2), radius: 8, x: 6, y: 8)
                
                //FRUIT: TITLE
                Text("Blueberry")
                //FRUIT: HEADLINE
                //BUTTON: START
                
            }//: VSTACk
        }//: ZSTACk
        .background(LinearGradient(gradient:Gradient(colors:[Color("ColorBlueberryLight"),Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
}


#Preview {
    FruitCardView()
}
