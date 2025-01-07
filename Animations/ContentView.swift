//
//  ContentView.swift
//  Animations
//
//  Created by Thierno Diallo on 1/5/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowing = false
        var body: some View {
        VStack {
            Button("Tap This") {
                withAnimation {
                    isShowing.toggle()
                }
            }
            
            if isShowing {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.opacity)
            }
        }
    }
    
}

#Preview {
    ContentView()
}
