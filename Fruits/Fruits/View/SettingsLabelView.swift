//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Ussama Irfan on 25/06/2024.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
        .padding()
}
