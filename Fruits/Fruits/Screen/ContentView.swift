//
//  ContentView.swift
//  Fruits
//
//  Created by Ussama Irfan on 24/06/2024.
//

import SwiftUI

struct ContentView: View {
    
    var fruits = fruitsData
    
    var body: some View {
        
        NavigationStack {
            
            List(fruits.shuffled()) { fruit in
                FruitRowView(fruit: fruit)
                    .padding(.vertical, 4)
            }
            .navigationTitle("Fruits")
        }
    }
}

#Preview {
    ContentView()
}
