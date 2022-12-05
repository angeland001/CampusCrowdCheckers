//
//  MainView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/18/22.
//

import SwiftUI
import SwiftClockUI

struct MainView: View {
    
    //keeps track of currently selected house... HOME PAGE
    @State var selectedTab = "graduationcap"
    @State private var clockStyle: ClockStyle = .steampunk
    @Environment(\.colorScheme) var colorScheme
    
    let icons: [String] = [
        "bubble.left", "takeoutbag.and.cup.and.straw", "graduationcap", "gearshape"
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
                    HomeView()
                
                case icons[3]:
                    Settings(clockStyle: clockStyle)
                default:
                    HomeView()
                }
                
                //Tab Bar is fixed throughout all views
                AnimatedTabBar(selectedTab: $selectedTab)
                    
                
            }
            
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
