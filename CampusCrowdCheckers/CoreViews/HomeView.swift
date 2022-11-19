//
//  ContentView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/7/22.
//

import SwiftUI

struct HomeView: View {
    
    //keep track of current infographic to change graphs when needed
    @State var PageIndex = 0
    
    
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            
            VStack {
                Infographics(PageIndex: $PageIndex)
                    .frame(height:280)
                
                
                    //if the infographic changes... change graph output
                    ScrollView {
                            VStack(alignment: .leading) {
                                ForEach(0..<50) { num in
                                    Text("This is a test" + "\(num)")
                                        .foregroundColor(Color.white)
                                    
                                }
                                    
                                
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

