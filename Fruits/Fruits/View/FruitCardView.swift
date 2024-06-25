//
//  FruitCardView.swift
//  Fruits
//
//  Created by Ussama Irfan on 25/06/2024.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - PROPERTIES
    
    @State private var isAnimating = false
    
    var fruit: Fruit
    
    // MARK: - FUNCTIONS

    // MARK: - CONTENT

    var body: some View {
        
        ZStack {
            
            VStack(spacing: 20) {

                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text(fruit.title)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
                
                Text(fruit.headline)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
            }
        }
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5 )) {
                isAnimating = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
        )
        .clipShape(.rect(cornerRadii: RectangleCornerRadii(topLeading: 20, bottomLeading: 20, bottomTrailing: 20, topTrailing: 20)))
        .padding(.horizontal, 20)
    }
}

#Preview(traits: .fixedLayout(width: 320, height: 640)) {
    FruitCardView(fruit: fruitsData[1])
}
