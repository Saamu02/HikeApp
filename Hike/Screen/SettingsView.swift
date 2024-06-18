//
//  SettingsView.swift
//  Hike
//
//  Created by Ussama Irfan on 18/06/2024.
//

import SwiftUI

struct SettingsView: View {
    
    private let alternateAppIcons: [String] = [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Camera",
        "AppIcon-Backpack",
        "AppIcon-Campfire"
    ]
    
    var body: some View {
        
        List {
            
            Section {
                
                HStack {
                    Spacer()
                    
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80))
                        .fontWeight(.black)
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66))
                            .fontWeight(.black)
                        
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80))
                        .fontWeight(.black)
                    
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGreenMedium,
                            .customGreenDark
                        ],
                        startPoint: .top,
                        endPoint: .bottom)
                )
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }
            .listRowSeparator(.hidden)
            
            Section(header: Text("Alternative Icons")) {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing: 12) {
                        ForEach(alternateAppIcons.indices, id: \.self) { item in
                            Button(action: {
                                
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item]) { error in
                                    
                                    if error != nil {
                                        print("Failed request to update the app's icon: \(String(describing: error?.localizedDescription))")
                                        
                                    } else {
                                        print("Success! You have changed the app's icon to \(alternateAppIcons[item])")
                                    }
                                }
                                
                            }, label: {
                                Image("\(alternateAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .clipShape(.buttonBorder)
                            })
                            .buttonStyle(.borderless)
                        }
                    }
                }
                .padding(.top, 8)
                .padding(.bottom, -10)
                
                Text("Chose your favourite app icon from the collection above.")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .font(.footnote)
                    .lineSpacing(-16)
                    .padding(.bottom, 8)
            }
            .listRowSeparator(.hidden)
            
            
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack {
                    Spacer()
                    Text("Copyright © All right reserved.")
                    Spacer()
                }
                    .padding(.vertical, 8)
            ) {
                CustomListRowView(rowIcon: "apps.iphone", rowLabel: "Application", rowContent: "HIKE", rowTintColor: .blue)
                
                CustomListRowView(rowIcon: "info.circle", rowLabel: "Compatibility", rowContent: "iOS, iPadOS", rowTintColor: .red)
                
                CustomListRowView(rowIcon: "swift", rowLabel: "Technology", rowContent: "Swift", rowTintColor: .orange)
                
                CustomListRowView(rowIcon: "gear", rowLabel: "Version", rowContent: "1.0", rowTintColor: .purple)
                
                CustomListRowView(rowIcon: "ellipsis.curlybraces", rowLabel: "Developer", rowContent: "Ussama Irfan", rowTintColor: .mint)
                
                CustomListRowView(rowIcon: "paintpalette", rowLabel: "Designer", rowContent: "Ussama Irfan", rowTintColor: .pink)
                
                CustomListRowView(rowIcon: "globe", rowLabel: "Github", rowTintColor: .indigo, rowLinkLabel: "Saamu02", rowLinkDestination: "https://github.com/Saamu02"
                )
            }
        }
    }
}

#Preview {
    SettingsView()
}
