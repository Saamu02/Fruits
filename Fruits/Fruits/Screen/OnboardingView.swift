//
//  OnboardingView.swift
//  Fruits
//
//  Created by Ussama Irfan on 25/06/2024.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits = fruitsData
    
    var body: some View {
        
        TabView {
            
            ForEach(fruits[0...5]) { fruit in
                FruitCardView(fruit: fruit)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
} 

#Preview {
    OnboardingView()
}
