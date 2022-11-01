//
//  TabBar.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/1/22.
//
//With this, see if you can implement it into the project we have now.
//If you can change the tab bar color to grey or black, I think that would be cool
//If you figure out the icon colors, I think a dark purple (like in the code below) would be sick too.
//I think the home should be what we have so far

import SwiftUI

struct ChatTab: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color.yellow
            }
            .navigationTitle("Chat")
        }
    }
}

struct HomeTab: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.red
            }
            .navigationTitle("Home")
        }
    }
}

struct FAQTab: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.orange
            }
            .navigationTitle("FAQ")
        }
    }
}









struct TabBar: View {
    var body: some View {
        TabView {
            ChatTab()
                .tabItem{
                    Image(systemName: "bubble.left.fill")
                    Text("Chat")
                }
            HomeTab()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            FAQTab()
                .tabItem{
                    Image(systemName: "questionmark.circle")
                    Text("FAQ")
                }
            
                
            
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
