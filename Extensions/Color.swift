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
    static subscript(name: String) -> Color {
            switch name {
                case "green":
                    return Color.theme.green
                case "white":
                    return Color.white
                case "black":
                    return Color.theme.black
                case "yellow":
                    return Color.theme.yellow
                case "blue":
                    return Color.theme.blue
                case "red":
                    return Color.theme.red
                case "purple":
                    return Color.theme.purple
                case "orange":
                    return Color.theme.orange
                case "pink":
                    return Color.pink
                    
                default:
                    return Color.accentColor
            }
        }
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
    let opacity = Color("Opacity")
    let accent = Color("AccentColor")
    let green = Color("Green")
    let blue = Color("Blue")
    let orange = Color("Orange")
    let purple = Color("Purple")
    let red = Color("Red")
    let yellow = Color("Yellow")
    let black = Color("Black")
    let infoboxes = Color("InfoBoxes")
    
    
    
        
        
}
