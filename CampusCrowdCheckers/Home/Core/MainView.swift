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
    @State var selectedTab: Tab = .graduationcap
    @ObservedObject var locationManager = LocationManager.shared
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $selectedTab) {
                LiveChat()
                    
                    .tag(Tab.message)
                Group {
                    if locationManager.userLocation == nil {
                        LocationRequestView()
                    }
                    else {
                        MapView()
                    }
                }
                    .tag(Tab.takeout)
                HomeView()
                    .tag(Tab.graduationcap)
                Settings()
                    .tag(Tab.gear)
            }
            
            AnimatedTabBar(currentTab: $selectedTab)
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

extension View {
    func applyBG() -> some View {
        self
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background {
                Color("Jenni")
                    .ignoresSafeArea()
            }
    }
        
}
