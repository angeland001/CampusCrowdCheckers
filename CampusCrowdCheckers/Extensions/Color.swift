//
//  Color.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/15/22.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let SplashScreen = Color("SplashScreenColor")
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let secondaryText = Color("SecondaryTextColor")
    let gradient = LinearGradient(gradient: Gradient(colors: [Color.black,Color.white]),
                                  startPoint: .topLeading, endPoint: .bottomLeading)
    let circle = Color("CircleColor")
    let lessopacitycircle = Color("LessOpacityCircle")
    
    
        
        
}
