//
//  SettingsView.swift
//  Fruits
//
//  Created by Aakarshit Jaswal on 07/12/23.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    Text("Hello, World!")
                } //: VSTACK
                .navigationTitle(Text("Settings"))
                .padding()
            } //: SCROLL
        } //: NAVIGATION
    }
}

#Preview {
    SettingsView()
}
