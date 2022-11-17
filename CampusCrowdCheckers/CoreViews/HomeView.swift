//
//  ContentView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/7/22.
//

import SwiftUI

struct HomeView: View {
    
    
    @State var PageIndex = 5
    
    
    
    
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

