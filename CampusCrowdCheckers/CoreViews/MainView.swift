//
//  MainView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/18/22.
//

import SwiftUI

struct MainView: View {
    
    //keeps track of currently selected house... HOME PAGE
    @State var selectedTab = "house"
    
    
    let icons: [String] = [
        "bubble.left", "house", "gearshape"
    ]
    
    var body: some View {
        ZStack {
            Color.theme.Background
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                //Switches views depending on tab selected
                switch selectedTab {
                case icons[0]:
                    LiveChat()
                case icons[1]:
                    HomeView()
                case icons[2]:
                    Settings()
                default:
                    HomeView()
                }
                
                //Tab Bar is fixed throughout all views
                AnimatedTabBar(selectedTab: $selectedTab)
                    .background(Color.theme.Background)
                
            }
            
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
