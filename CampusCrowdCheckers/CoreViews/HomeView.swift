//
//  ContentView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/7/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var selectedTab = "house"
    @State var PageIndex = 0
    
    let icons: [String] = [
        "bubble.left", "house", "questionmark.circle"
    ]
    
    
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            
            VStack {
                Infographics(PageIndex: $PageIndex)
                    .frame(height:280)
                
                
                
                    ScrollView {
                            VStack(alignment: .leading) {
                                Text("Hello")
                                    .foregroundColor(Color.white)
                            }
                        }
                    
                    
                AnimatedTabBar(selectedTab: $selectedTab)
                Spacer().frame(height:20)
                }
            
            
            
                
                
            }
            .ignoresSafeArea()
            
            
            
        }
            
   
    }
    
    

func goToLiveChat() {
    
}


    
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

