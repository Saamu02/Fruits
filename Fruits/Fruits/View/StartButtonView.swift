//
//  StartButtonView.swift
//  Fruits
//
//  Created by Ussama Irfan on 25/06/2024.
//

import SwiftUI

struct StartButtonView: View {
    
    var body: some View {
        
        Button(action: {
            
        }, label: {
            
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
        })
        .tint(.white)
        .background(
            Capsule()
                .strokeBorder(Color.white, lineWidth: 1.25)
        )
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StartButtonView()
}
