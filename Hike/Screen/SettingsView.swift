//
//  SettingsView.swift
//  Hike
//
//  Created by Ussama Irfan on 18/06/2024.
//

import SwiftUI

struct SettingsView: View {
    
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
        }
    }
}

#Preview {
    SettingsView()
}
