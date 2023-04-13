//
//  MainView.swift
//  CampusCrowdCheckers
//
//  
//

import SwiftUI
import SwiftClockUI

struct MainView: View {
    
    //keeps track of currently selected house... HOME PAGE
    @EnvironmentObject var listViewModel: ListViewModel
    @State var selectedTab: Tab = .graduationcap
    let size: CGFloat = 30
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
                ListView()
                    .tag(Tab.todo)
                
                HomeView()
                    .tag(Tab.graduationcap)
                Settings()
                    .tag(Tab.gear)
            }
            
            AnimatedTabBar(size: size, currentTab: $selectedTab)
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(ListViewModel())
        
    }
}


