//
//  CardView.swift
//  Hike
//
//  Created by Ussama Irfan on 17/06/2024.
//

import SwiftUI

struct CardView: View {
    
    @State private var randomNumber = 1
    @State private var imageNumber = 1
    
    func randomImage() {
        
        repeat {
            randomNumber = Int.random(in: 1...5)

        } while imageNumber == randomNumber
        
        imageNumber = randomNumber
    }
    
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
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration: 1), value: imageNumber)
                } // MAIN CONTENT VIEW
                
                // MARK: - FOOTER VIEW
                Button(action: {
                    randomImage()
                    
                }, label: {
                    Text("Exlpore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2) 
                })
                .buttonStyle(GradientButton() )
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
