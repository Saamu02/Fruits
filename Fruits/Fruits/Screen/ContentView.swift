//
//  ContentView.swift
//  Fruits
//
//  Created by Ussama Irfan on 24/06/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowingSettings = false
    
    var fruits = fruitsData
    
    var body: some View {
        
        NavigationStack {
            
            List(fruits.shuffled()) { fruit in
                
                NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4 )
                }
            }
            .navigationTitle("Fruits")
            .toolbar() {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    })
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
