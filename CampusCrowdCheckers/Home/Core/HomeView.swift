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
    
    @State private var showProfile: Bool = false
    @State var showResult: Bool = false
    @StateObject var vm: HomeViewModel = HomeViewModel()
    @State var searchText = ""
    
    
    
    var body: some View {
        
        ZStack {
            Color.theme.Background
                .ignoresSafeArea()
            
            //content layer
        
            VStack {
               homeHeader
                
               SearchBarView(searchText: $searchText)
                
               TitleColumns
                
                universityList
                
                
                
                
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
                //Spacer()
                Text("Name")
                    .offset(x:55)
                Spacer()
                Text("City")
                    .offset(x:-40)
                
            }
            .opacity(0.3)
            .padding(.horizontal)
        }
    }
    
    private var universityList: some View {
        List {
            ForEach((vm.universities).filter( {"\($0)".contains(searchText) || searchText.isEmpty} )) { university in
                NavigationLink(destination: SchoolInformationView(school: university)) {
                    Button(action: { }) {
                        UniversityRowView(school: university, image: university.name)
                    }
                }
                 
                    
                
            }
        }
        .listStyle(PlainListStyle())
    }
    
    
    
}

