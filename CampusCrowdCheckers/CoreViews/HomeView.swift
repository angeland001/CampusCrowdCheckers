//
//  ContentView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/7/22.
//

import SwiftUI

struct HomeView: View {
    @State var selectedTab = "house"
    
    var body: some View {
        
        ZStack(alignment: .bottom, content: {
            
            Color.theme.BackGradient
                .ignoresSafeArea()
            
            //custom tab bar
            AnimatedTabBar(selectedTab: $selectedTab)
        })
        
         
            
    }
        
        
        
        
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
