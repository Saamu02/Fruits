//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Ussama Irfan on 25/06/2024.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil

    var body: some View {
        
        VStack {
            Divider().padding(.vertical, 4)

            HStack {
                Text(name)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                if let content {
                    Text(content)
                    
                } else if let linkLabel, let linkDestination {
                    Link(linkLabel, destination: URL(string: "https://\(linkDestination)")! )
                    
                     Image(systemName: "arrow.up.right.square")
                        .foregroundStyle(.pink)
                    
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 60)) {
    SettingsRowView(name: "Developer", content: "Saamu")
        .padding()
 } 
