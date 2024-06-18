//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Ussama Irfan on 17/06/2024.
//

import SwiftUI

struct GradientButton: ButtonStyle {
  
    func makeBody(configuration: Configuration) -> some View {
    configuration
      .label
      .padding(.vertical)
      .padding(.horizontal, 30)
      .background(
        configuration.isPressed ? LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom) : LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
      )
      .clipShape(.capsule)
  }
}
