//
//  FruitRowView.swift
//  Fruits
//
//  Created by Ussama Irfan on 25/06/2024.
//

import SwiftUI

struct FruitRowView: View {
     
    var fruit: Fruit
    
    var body: some View {
       
        HStack {
            
            Image(fruit.image)
                .renderingMode(.original) //to avoid defualt system behaviour when ember in links, navigation links so that it won't change the color of the image
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                )
                .clipShape(.rect(cornerRadii: RectangleCornerRadii(topLeading: 8, bottomLeading: 8, bottomTrailing: 8, topTrailing: 8)))
                
            VStack(alignment: .leading) {
                
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FruitRowView(fruit: fruitsData[0])
        .padding( )
}
