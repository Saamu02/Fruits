//
//  OnboardingView.swift
//  Fruits
//
//  Created by Ussama Irfan on 25/06/2024.
//

import SwiftUI

struct OnboardingView: View {
    
    var body: some View {
        
        TabView {
            
            ForEach(0..<5) { item in
                FruitCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
} 

#Preview {
    OnboardingView()
}
