//
//  CustomListRowView.swift
//  Hike
//
//  Created by Ussama Irfan on 18/06/2024.
//

import SwiftUI

struct CustomListRowView: View {
    
    @State var rowIcon: String
    @State var rowLabel: String
    @State var rowContent: String
    @State var rowTintColor: Color
    
    var body: some View {
        
        LabeledContent {
            Text(rowContent)
                .foregroundStyle(Color.primary)
                .fontWeight(.heavy)
            
        } label: {
            
            HStack {
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(rowTintColor)
                    
                    Image(systemName: rowIcon)
                        .foregroundStyle(Color.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(
            rowIcon: "paintpalette",
            rowLabel: "Designer",
            rowContent: "Ussama",
            rowTintColor: .red
        )
    }
}
