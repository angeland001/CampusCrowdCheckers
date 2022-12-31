//
//  ContentView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/7/22.
//

import SwiftUI
import Foundation


struct HomeView: View {
    
    
    
    @State private var showProfile: Bool = false
    @State var showResult: Bool = false
    @State var searchText = ""
    @State var loading: Bool = true
    

    
    
    
    
    
    
    var body: some View {
        
        ZStack {
            Color.theme.Background
                .ignoresSafeArea()
            
            //content layer
        
            VStack {
                homeHeader
                
                SearchBarView(searchText: $searchText)
                    
                TitleColumns
                
                if loading {
                    Spacer()
                    LoadingIcon
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                                self.loading = false
                            }
                                                          
                        }
                }
                
                if !loading {
                    universityList
                }
                
                
                
                    
                
                
                
                
                Spacer(minLength: 0)
                
                
                
            }
            
            
        }
        
        
    }
}
    





    
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
        }
        
    }
}

extension HomeView {
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: showProfile ? "star.fill" : "star")
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
            CircleButtonView(iconName: showProfile ? "person.fill" : "person")
                
                .onTapGesture {
                    withAnimation(.spring()) {
                        showProfile.toggle()
                    }
                }
                
                .background(
                    CircleButtonAnimationView(animate: $showProfile)
                )
                
            
        }
        .padding(.horizontal)
    }
    
    private var TitleColumns: some View {
        HStack {
            Group {
                Text("ID")
                    .offset(x:30)
                Spacer()
                Text("University")
                Spacer()
                Text("City")
                    .offset(x:-50)
                    
                
            }
            .opacity(0.3)
        }
    }
    
    private var universityList: some View {
        List {
            ForEach((University.universities).filter( {"\($0)".contains(searchText) || searchText.isEmpty} )) { university in
                        NavigationLink(destination: SchoolInformationView(school: university)) {
                            Button(action: { }) {
                                UniversityRowView(school: university, image: university.name)
                            }
                        }
                         
                            
                        
                    }
                }
                .listStyle(PlainListStyle())
    }
    
    private var LoadingIcon: some View {
        TimelineView(.animation) { timeline in
            let time = timeline.date.timeIntervalSinceReferenceDate
            ZStack {
                Image(systemName: "figure.run")
                    .resizable()
                    .frame(width: 80, height: 100)
                Circle()
                    //.fill(.white.gradient)
                    
                    .stroke()
                    .frame(width: 200, height: 200)
                    
                ForEach(0..<6) { i in
                    Stripe(time: time, size: 200)
                        .foregroundColor(Color.theme.Stroke)
                        .rotationEffect(.degrees((360 / 6) * Double(i)))
                }
            }
        }
    }
    
    
    
}

