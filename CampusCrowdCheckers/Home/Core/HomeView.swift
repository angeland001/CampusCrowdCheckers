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
    @State var pageIndex: Int = 0
    
    
    
    
    var body: some View {
        
        ZStack {
            Color("Jenni")
            //Color.theme.Background
                .ignoresSafeArea()
            
            //content layer
            
            VStack {
                ZStack(alignment: .top){
                    Wave(yOffset: -0.55)
                        .fill(Color.white).opacity(0.5)
                        .frame(height: 150)
                        .shadow(radius: 4)
                        .ignoresSafeArea()
                    Wave(yOffset: 0.55)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 4)
                        .ignoresSafeArea()
                    
                    ZStack {
                        
                        VStack {
                            
                            homeHeader
                            
                            
                            
                            SearchBarView(searchText: $searchText)
                                .offset(y:10)
                                .frame(width:420)
                            
                            
                            if loading {
                                Spacer()
                                LoadingIcon
                                    .onAppear {
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                                            self.loading = false
                                        }
                                        
                                    }
                                Spacer()
                            }
                            
                            if !loading {
                                TitleColumns
                                
                                universityList
                            }
                        }
                        
                    }
                        
                   
                    
                    Spacer()
                    
   
                    
                    
                    Spacer(minLength: 0)
                    
                    
                    
                }
                
                
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
                Spacer()
                ZStack {
                    VStack {
                        Text("Welcome to")
                        
                            .font(.headline)
                            .foregroundColor(Color("Jenni"))
                            .offset(x:-68)
                        Text("CrowdCheck")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Jenni"))
                        
                            .offset(x:-60)
                        
                    }
                    .italic()
                    
                    .multilineTextAlignment(.leading)
                            
                    
                }
                
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
                .foregroundColor(Color("Text"))
                //.opacity(0.8)
            }
        }
        
        private var universityList: some View {
            ZStack {
                
                List {
                    ForEach((University.universities).filter( {"\($0)".contains(searchText) || searchText.isEmpty} )) { university in
                        NavigationLink(destination: SchoolInformationView(school: university)) {
                            Button(action: { }) {
                                UniversityRowView(school: university, image: university.name)
                            }
                        }
                        .listRowBackground(Color("Jenni"))
                        
                        
                    }
                    .foregroundColor(Color("WaveColor"))
                    .background(Color("Jenni"))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .listStyle(.plain)
            }
            .background(Color("Jenni"))
            
        }
        
        private var LoadingIcon: some View {
            TimelineView(.animation) { timeline in
                let time = timeline.date.timeIntervalSinceReferenceDate
                ZStack {
                    
                    ForEach(0..<6) { i in
                        Stripe(time: time, size: 200)
                            .foregroundColor(Color.white)
                            .rotationEffect(.degrees((360 / 6) * Double(i)))
                    }
                }
            }
        }
        
        
        
        
        
        
    }
