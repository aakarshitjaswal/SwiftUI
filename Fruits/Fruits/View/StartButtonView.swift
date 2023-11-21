//
//  StartButtonView.swift
//  Fruits
//
//  Created by Aakarshit Jaswal on 21/11/23.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        Button(action: {
            print("Exit the onboarding")
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
            
        }
        .accentColor(Color.white)
    }
}

#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}
