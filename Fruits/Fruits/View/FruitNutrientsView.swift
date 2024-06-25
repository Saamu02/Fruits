//
//  FruitNutrientsView.swift
//  Fruits
//
//  Created by Ussama Irfan on 25/06/2024.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: Fruit
    let nutrients  = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]

    var body: some View {
        
        GroupBox() {
            
            DisclosureGroup("Nutrients value per 100 gram") {
                
                ForEach(0..<nutrients.count, id: \.self) { item in
                    
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 480)) {
    FruitNutrientsView(fruit: fruitsData[0 ])
        .padding()
}
