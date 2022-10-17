//
//  ContentView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/7/22.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab: Tab = .house
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedTab) {
                ForEach(Tab.allCases, id:\.rawValue) { tab in
                    HStack {
                        Text("Hello!")
                    }
                    
                    
                }
            }
            ZStack {
                VStack {
                    Spacer()
                    TabBar(selectedTab: $selectedTab)
                    
                }
            }
            .background(Color.theme.BackGradient)
            
            
            }
        }
        
        
        
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
