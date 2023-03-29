//
//  VenueCrowdView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 3/29/23.
//

import SwiftUI

struct VenueCrowdView: View {
    var school: University
    var schoolVenue: SchoolVenues
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.red.opacity(0.95), Color.pink.opacity(0.8)], startPoint: .topLeading, endPoint: .bottomTrailing)
            
            VStack(spacing: 100) {
                HStack {
                    VStack(alignment: .center) {
                        Image("CFA")
                            .resizable()
                            .foregroundColor(Color.white)
                            .clipShape(Circle())
                            .scaledToFit()
                            .frame(width: 105,height:105)
                    }
                    Spacer()
                    
                    VStack(alignment: .center) {
                        Text("Opens at: 11:00 AM")
                            .font(.body)
                        Text("Closes at: 8:00 PM")
                            .font(.body)
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .center) {
                        Text("Crowd Now")
                            .font(.body)
                        Text("29")
                            .font(.body)
                    }
                }
                .padding()
                .frame(width: 360)
                .foregroundStyle(LinearGradient(colors: [Color.white, Color.white], startPoint: .top, endPoint: .bottom))
            .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                
                VStack(alignment: .leading, spacing: 2){
                    Text("More Info".uppercased())
                        .font(.headline)
                        .padding()
                    
                    HStack(alignment: .top){
                        Text("This is generally the most crowded at 2:00 pm")
                            .font(.caption)
                            .frame(width: 250, height: 32)
                        Spacer()
                        Text("Busiest Hour")
                            .font(.caption)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                    
                    HStack{
                        VStack(alignment: .center){
                            Text("4.3")
                                .font(.system(size: 24, weight: .bold, design: .rounded))
                            Text("avg texts/day".uppercased())
                                .font(.system(size: 12, weight: .regular, design: .rounded))
                        }
                        Spacer()
                        
                        VStack(alignment: .center){
                            Text("+19%")
                                .font(.system(size: 24, weight: .bold, design: .rounded))
                                .foregroundColor(Color.green)
                            Text("this month".uppercased())
                                .font(.system(size: 12, weight: .regular, design: .rounded))
                        }
                        Spacer()
                        
                        VStack(alignment: .center){
                            Text("12 hrs")
                                .font(.system(size: 24, weight: .bold, design: .rounded))
                            Text("last spoke".uppercased())
                                .font(.system(size: 12, weight: .regular, design: .rounded))
                        }
                    }
                    .padding()
                }
                .frame(width: 360)
                .foregroundColor(Color.black.opacity(0.8))
                .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
            }
        }
        .ignoresSafeArea()
    }
}

struct VenueCrowdView_Previews: PreviewProvider {
    static var previews: some View {
        VenueCrowdView(school: dev.school, schoolVenue: dev.schoolVenue)
    }
}
