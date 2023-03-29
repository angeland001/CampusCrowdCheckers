//
//  Wave.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 1/1/23.
//

import Foundation
import SwiftUI

struct Wave: Shape {
    var yOffset: CGFloat = 0.5
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        //Curve at the bottom
        path.addCurve(to: CGPoint(x: rect.minX, y: rect.maxY),
                      control1: CGPoint(x: rect.maxX * 0.75, y: rect.maxY - (rect.maxY * yOffset)),
                      control2: CGPoint(x: rect.maxX * 0.25, y: rect.maxY + (rect.maxY * yOffset)))
        
        path.closeSubpath()
        
        
        return path
    }
    
    
}






struct Wave_Previews: PreviewProvider {
    static var previews: some View {
        Wave(yOffset: -0.55)
            .fill(Color.white).opacity(0.5)
            .frame(height: 150)
            .shadow(radius: 4)
            .ignoresSafeArea()
            
    }
}
