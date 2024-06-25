//
//  FruitHeaderView.swift
//  Fruits
//
//  Created by Ussama Irfan on 25/06/2024.
//

import SwiftUI

struct FruitHeaderView: View {
    
    @State private var isAnimating = false

    var fruit: Fruit
    
    var body: some View {
        
        ZStack {
            
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)

        }
        .frame(height: 440)
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 440)) {
    FruitHeaderView(fruit: fruitsData[0])
}
