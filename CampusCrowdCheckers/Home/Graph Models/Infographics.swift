//
//  Infographics.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/9/22.
//

import SwiftUI

struct Infographics: View {

//   @State var isAnimated: Bool = false
    var venue: SchoolVenues
    var body: some View {
            
        ZStack {
            
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.theme.Stroke, lineWidth: 5)
                )
                .frame(height: 250)
                .padding(.horizontal)
            HStack {
                Image(venue.VenueName)
                    .resizable()
                    .foregroundColor(Color.black)
                    .scaledToFit()
                    .frame(width: 105,height:105)
                    .overlay {
                        Circle().stroke(Color.theme.Stroke, lineWidth: 4)
                }
                
                
                
                
                VStack {
                    Text("Fall Hours")
                        .foregroundColor(Color.black)
                        .font(.title)
                        .bold()
                    Text(venue.VenueName)
                }
            }
        }
        
        
    }
        
        
}

 
//
//TabView(selection: $PageIndex) {
//        //insert infographics sequentially
//        HomeInfo(image: "house.circle").tag(0)
//        ChickFilAInfo(image: "chickfilalogo").tag(1)
//        StarbucksInfo(image: "StarbuckLogo").tag(2)
//        MoesInfo(image: "MoesLogo").tag(3)
//        PodInfo(image: "podlogo").tag(4)
//        PandaInfo(image: "PandaLogo").tag(5)
//        RRInfo(image: "RRLogo").tag(6)
//
//    }
//    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//    //.frame(height:320)
//
//struct Infographics_Previews: PreviewProvider {
//    static var previews: some View {
//        Infographics(venue: dev.schoolVenue)
//    }
//}
