//
//  CustomCircleView.swift
//  Hike
//
//  Created by Ussama Irfan on 18/06/2024.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var isAnimateGradient = false
    
    var body: some View {
        
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .customIndigoMedium,
                            .customSalmonLight
                        ],
                        startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear(perform: {
                    
                    withAnimation(.linear(duration:  3).repeatForever(autoreverses: true)) {
                        isAnimateGradient.toggle()
                    }
                })
            
            MotionAnimationView()
        }
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
