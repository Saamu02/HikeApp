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
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil

    
    var body: some View {
        
        LabeledContent {
            
            if let rowContent {
                
                Text(rowContent)
                    .foregroundStyle(Color.primary)
                    .fontWeight(.heavy)
                
            } else if let rowLinkLabel, let rowLinkDestination {
                Link(rowLinkLabel, destination: URL(string: rowLinkDestination)!)
                    .foregroundStyle(.purple)
                    .fontWeight(.heavy)
                
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
            
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
            rowIcon: "globe",
            rowLabel: "Github",
            rowContent: nil,
            rowTintColor: .red,
            rowLinkLabel: "Ussama",
            rowLinkDestination: "https://github.com/Saamu02"
        )
    }
}
