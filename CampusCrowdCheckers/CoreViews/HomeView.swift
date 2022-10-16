//
//  ContentView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/7/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.theme.BackGradient
                .ignoresSafeArea()
            
                HStack(spacing:2) {
                    ImageIcons(IconName: "chickfilalogo")
                    ImageIcons(IconName: "MoesLogo")
                    ImageIcons(IconName: "PandaLogo")
                    ImageIcons(IconName: "podlogo")
                    ImageIcons(IconName: "RRLogo")
                    
                    
                    
                }
                .background(Color.accentColor)
                .clipShape(Capsule())
                .offset(y:-310)
            }
        }
        
        
        
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
