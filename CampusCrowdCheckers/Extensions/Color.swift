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

   
    let BackGradient = LinearGradient(gradient: Gradient(colors: [Color.black,Color.white]),
                                  startPoint: .topLeading, endPoint: .bottomTrailing)
    let GradientLoginButton = LinearGradient(gradient: Gradient(colors: [Color.white,Color.black]),
                                  startPoint: .topLeading, endPoint: .bottomTrailing)
    let GradientSignUpButton = LinearGradient(gradient: Gradient(colors: [Color.white,Color.black]),
                            startPoint: .leading, endPoint: .trailing)
    let circle = Color("CircleColor")
    let lessopacitycircle = Color("LessOpacityCircle")
    let PandaInfographic = Color("PandaInfoRectangle")
    let StarbucksInfographic = Color("StarbucksRectangle")
    let Background = Color("Background")
    let TabBar = Color("TabBar")
    let text = Color("Text")
    let Stroke = Color("Stroke")
    
    
        
        
}
