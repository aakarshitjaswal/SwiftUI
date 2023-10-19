//
//  ContentView.swift
//  SwiftUIAsyncImage
//
//  Created by Aakarshit Jaswal on 03/10/23.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct ContentView: View {
    
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        // MARK: 1. BASIC
//        AsyncImage(url:URL(string: imageURL))
        
        // MARK: 2. SCALE
//        AsyncImage(url: URL(string: imageURL), scale: 3)
        
        // MARK: 3. PLACEHOLDER
//        AsyncImage(url: URL(string: imageURL)) { image in
//            image
//                .imageModifier()
//        } placeholder: {
//            Image(systemName: "photo.circle.fill")
//                .iconModifier()
//        }
//        .padding(40)
        
        // MARK: 4. PHASE
//        AsyncImage(url: URL(string: imageURL)) { phase in
//            if let image = phase.image {
//                image.imageModifier()
//            } else if phase.error != nil {
//                Image(systemName: "ant.circle.fill").iconModifier()
//            } else {
//                Image(systemName: "photo.circle.fill").iconModifier()
//            }
//        }
//        .padding(40)

        // MARK: 5. ANIMATIONS
        AsyncImage(url: URL(string: imageURL), scale: 3, transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) { phase in
            switch phase {
            case .success(let image):
                image.imageModifier()
                    .transition(.scale)
            case .failure(_):
                Image(systemName: "ant.circle.fill").iconModifier()
                    .transition(.scale)
            case .empty:
                Image(systemName: "photo.circle.fill").iconModifier()
                    .transition(.scale)
            @unknown default:
                ProgressView()
            }
        }
        .padding(40)

    }
}

#Preview {
    ContentView()
}
