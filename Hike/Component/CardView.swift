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
            }
        } // CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
