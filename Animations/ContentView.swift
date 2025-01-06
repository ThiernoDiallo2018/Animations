//
//  ContentView.swift
//  Animations
//
//  Created by Thierno Diallo on 1/5/25.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        
        VStack {
            
            Button("Tap This") {
                withAnimation(.spring(duration: 1, bounce: 0.5)) {
                    animationAmount += 360
                }
                
            }
            .padding(50)
            .background(.purple)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 0, z: 1))
        }
    }
}

#Preview {
    ContentView()
}
