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
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            
            VStack {
                Infographics()
                    .frame(height:280)
                
                
                
                    ScrollView {
                            VStack(alignment: .leading) {
                                ForEach(0..<50) {
                                    Text("Hello this is a test \($0)")
                                        .foregroundColor(Color.white)
                                }
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

