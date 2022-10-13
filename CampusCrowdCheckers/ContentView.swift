//
//  ContentView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/7/22.
//

import SwiftUI

var ImageNames:[String] = ["chickfilalogo","MoesLogo","PandaLogo","podlogo","RRLogo"]

struct ContentView: View {
    
    var body: some View {
        ZStack {
            HStack(spacing:2) {
                ImageIcons(IconName: "chickfilalogo")
                ImageIcons(IconName: "MoesLogo")
                ImageIcons(IconName: "PandaLogo")
                ImageIcons(IconName: "podlogo")
                ImageIcons(IconName: "RRLogo")
                
                
                            
            }
            .offset(y:-310)
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
