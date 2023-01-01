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
                ZStack(alignment: .top){
                    Wave(yOffset: -0.55)
                        .fill(Color.gray)
                        .frame(height: 150)
                        .shadow(radius: 4)
                        .ignoresSafeArea()
                    Wave(yOffset: 0.55)
                        .fill(Color.theme.text)
                        .frame(height: 150)
                        .shadow(radius: 4)
                        .ignoresSafeArea()
                    
                    ZStack {
                        VStack {
                            
                            homeHeader
                            
                            SearchBarView(searchText: $searchText)
                            
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
                        Text("Welcome Back")
                        
                            .font(.headline)
                            .foregroundColor(Color.theme.Background)
                            .offset(x:-70)
                        Text("Andres Angel")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.theme.Background)
                            .offset(x:-40)
                        
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
                    
                    ForEach(0..<6) { i in
                        Stripe(time: time, size: 200)
                            .foregroundColor(Color.theme.Stroke)
                            .rotationEffect(.degrees((360 / 6) * Double(i)))
                    }
                }
            }
        }
        
        
        
        
        
        
    }
