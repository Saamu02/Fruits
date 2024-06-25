//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Ussama Irfan on 25/06/2024.
//

import SwiftUI

struct SourceLinkView: View {
    
    var body: some View {
        
        GroupBox() {
            
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https:wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SourceLinkView()
        .padding()
}
