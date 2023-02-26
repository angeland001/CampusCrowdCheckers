//
//  CircleButtonView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 12/11/22.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color("WaveColor"))
            .frame(width:50,height:50)
            .background(
                Circle()
                    .foregroundColor(Color("Jenni"))
            )
            .shadow(color: Color.theme.accent.opacity(0.25), radius: 20, x:0,y:0)
            .padding()
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            CircleButtonView(iconName: "info")
                .previewLayout(.sizeThatFits)
            
            CircleButtonView(iconName: "plus")
                .previewLayout(.sizeThatFits)
                .colorScheme(.dark)
            
        }
       
    }
}
