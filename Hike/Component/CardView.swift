//
//  CardView.swift
//  Hike
//
//  Created by Ussama Irfan on 17/06/2024.
//

import SwiftUI

struct CardView: View {
    
    var body: some View {
        
        ZStack {
            CustomBackgroundView()
            
            VStack {
                
                // MARK: - HEADER VIEW
                VStack(alignment: .leading) {
                    
                    HStack {
                        
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .customGrayLight,
                                        .customGrayMedium
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                        
                        Spacer()
                        
                        Button(action: {
                            print("button pressed")
                            
                        }, label: {
                            CustomButtonView()
                        })
                    }
                    
                    Text("Fun and ejoyable outdoor activities for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                    
                } // HEADER VIEW
                .padding(.horizontal, 30)
                            
                
                // MARK: - MAIN CONTENT VIEW
                ZStack {
                    
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                    .customIndigoMedium,
                                    .customSalmonLight
                                ],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)
                    
                    Image("image-2")
                        .resizable()
                        .scaledToFit()
                } // MAIN CONTENT VIEW
                
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
