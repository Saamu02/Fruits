//
//  SettingsView.swift
//  Fruits
//
//  Created by Ussama Irfan on 25/06/2024.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding = false
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView(.vertical)  {
                
                VStack(spacing: 20) {
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10 ) {
                            
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(.rect(cornerRadii: RectangleCornerRadii(topLeading: 9, bottomLeading: 9, bottomTrailing: 9, topTrailing: 9)))
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle (Color.green)
                                
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Ussama")
                        
                        SettingsRowView(name: "Designer", content: "Ussama")
                        
                        SettingsRowView(name: "Compatibility", content: "iOS 17.5 ")
                        
                        SettingsRowView(name: "Website", linkLabel: "Github", linkDestination: "github.com/Saamu02")
                        
                        SettingsRowView(name: "LinkedIn", linkLabel: "@UssamaIrfan", linkDestination: "www.linkedin.com/in/saamu02/ ")
                        
                        SettingsRowView(name: "Version", content: "1.0")
                    }
                    
                }
                .navigationTitle("Settings")
                .toolbar() {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            self.dismiss()
                        }, label: {
                            Image( systemName : "xmark")
                        })
                    }
                }
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    SettingsView()
}
