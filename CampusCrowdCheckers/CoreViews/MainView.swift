//
//  MainView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/18/22.
//

import SwiftUI

struct MainView: View {
    @State var selectedTab = "house"
    
    let icons: [String] = [
        "bubble.left", "house", "gearshape"
    ]
    
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                
                
                switch selectedTab {
                case icons[0]:
                    LiveChat()
                case icons[1]:
                    HomeView()
                case icons[2]:
                    LiveChat()
                default:
                    HomeView()
                }
                
                
                AnimatedTabBar(selectedTab: $selectedTab)
                    .background(Color.black)
                
            }
            
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
