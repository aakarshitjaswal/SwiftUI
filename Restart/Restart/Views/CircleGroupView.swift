//
//  CircleGroup.swift
//  Restart
//
//  Created by Aakarshit Jaswal on 21/10/23.
//

import SwiftUI

struct CircleGroupView: View {
    
    // MARK: PROPERTY
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    @State private var isAnimating: Bool = false
    
    // MARK: BODY
    var body: some View {
        ZStack {
        
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        } //: ZSTACK
        .blur(radius: isAnimating ? 7 : 12)
        .opacity(isAnimating ? 1 : 0.5)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeInOut(duration:  4).repeatForever(), value:  isAnimating)
        .onAppear {
            isAnimating = true
        }
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
        }
    }
}
