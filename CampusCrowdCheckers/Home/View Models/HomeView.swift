//
//  ContentView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/7/22.
//

import SwiftUI
import Charts

struct HomeView: View {
    
    //keep track of current infographic to change graphs when needed
    @State var PageIndex = 0
    @State private var showProfile: Bool = false
    
    @Environment(\.colorScheme) var colorScheme
    
    
    
    var body: some View {
        
        ZStack {
            Color.theme.Background
                .ignoresSafeArea()
            
            //content layer
            
            VStack {
               homeHeader
                
                Spacer(minLength: 0)
            }
            
            
        }
        
        
    }
}
    




    
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

extension HomeView {
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: showProfile ? "chevron.right" : "info")
                .rotationEffect(Angle(degrees: showProfile ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        showProfile.toggle()
                    }
                }
                .background(
                    CircleButtonAnimationView(animate: $showProfile)
                )
            Spacer()
            Text("School Locations")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.text)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showProfile ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        showProfile.toggle()
                    }
                }
            
        }
        .padding(.horizontal)
    }
}

