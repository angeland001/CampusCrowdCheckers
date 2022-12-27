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
    @ObservedObject var locationManager = LocationManager.shared
    
    let icons: [String] = [
        "bubble.left", "takeoutbag.and.cup.and.straw", "graduationcap", "gearshape"
    ]
    
    var body: some View {
        ZStack {
            //BackGround layer
            Color.theme.Background
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                //Switches views depending on tab selected
                switch selectedTab {
                case icons[0]:
                    LiveChat()
                case icons[1]:
                    Group {
                        if locationManager.userLocation == nil {
                            LocationRequestView()
                        }
                        else {
                            MapView()
                        }
                    }
                case icons[2]:
                    HomeView()
                
                case icons[3]:
                    Settings()
                default:
                    HomeView()
                }
                
                //Tab Bar is fixed throughout all views
                AnimatedTabBar(selectedTab: $selectedTab)
                    .ignoresSafeArea(.keyboard, edges: .bottom)
                    
                
            }
            
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
