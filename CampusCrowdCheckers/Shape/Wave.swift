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

struct HeaderWave: Shape {
    let cornerRadius: CGFloat
        let corners: UIRectCorner

        func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(
                roundedRect: rect,
                byRoundingCorners: corners,
                cornerRadii: CGSize(width: cornerRadius, height: cornerRadius)
            )
            return Path(path.cgPath)
        }
}




struct Wave_Previews: PreviewProvider {
    static var previews: some View {
        HeaderWave(cornerRadius: 40, corners: [.bottomLeft, .bottomRight])
            .frame(width: 450, height: 100)
            
    }
}
