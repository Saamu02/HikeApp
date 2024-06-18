//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Ussama Irfan on 18/06/2024.
//

import SwiftUI

struct MotionAnimationView: View {
    
    @State private var randomCircle = Int.random(in: 6...12)
    @State private var isAnimating = false
    
    func randomCoordinate() -> CGFloat {
        CGFloat.random(in: 0...256)
    }
    
    func randomSize() -> CGFloat {
        CGFloat.random(in:  4...80)
    }
    
    func randomScale() -> CGFloat {
        CGFloat.random(in: 0.1...2.0)
    }
    
    func randomSpeed() -> Double {
        Double.random(in: 0.05...1.0)
    }
    
    func randomDelay() -> Double {
        Double.random(in: 0...2)
    }

    var body: some View {
        
        ZStack {
            
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(
                        width: randomSize()
                    )
                    .position(
                        x: randomCoordinate(),
                        y: randomCoordinate()
                    )
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear(perform: {
                         withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                         ) {
                                isAnimating = true
                            }
                    })
            }
        }
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }
}

#Preview {
    MotionAnimationView()
        .background(
            Circle()
                .fill(.red)
        )
}
