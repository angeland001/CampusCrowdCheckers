//
//  ContentView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/7/22.
//

import SwiftUI

struct HomeView: View {
    @State var selectedTab = "house"
    
    let icons: [String] = [
        "bubble.left", "house", "questionmark.circle"
    ]
    
    
    var body: some View {
        VStack {
            ZStack {
                Color.theme.background
                    .ignoresSafeArea()
                switch selectedTab {
                        case icons[0]:
                        //Use navigationlink to go to live chat
                            Text("LiveChat")
                                .foregroundColor(Color.white)
                        case icons[1]:
                        //modify the Home View here
                            Text("chart")
                                .foregroundColor(Color.white)
                        case icons[2]:
                        //Use navigationlink to go to Q/A
                            Text("Q/A")
                                .foregroundColor(Color.white)
                        default:
                            Text("Sup")
                            
                        }
                        

               AnimatedTabBar(selectedTab: $selectedTab)
                    .offset(y:340)
            }
            
  
            
            
        }
        
        
        
        
        
        
    }
    
    
}
    

    
    
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

