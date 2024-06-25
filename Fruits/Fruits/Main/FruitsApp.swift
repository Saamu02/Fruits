//
//  FruitsApp.swift
//  Fruits
//
//  Created by Ussama Irfan on 24/06/2024.
//

import SwiftUI

@main
struct FruitsApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding = true
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding {
                OnboardingView()
                
            } else {
                ContentView()
            }
        }
    }
}
