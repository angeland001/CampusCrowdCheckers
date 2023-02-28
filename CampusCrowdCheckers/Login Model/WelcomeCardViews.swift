//
//  WelcomeCardViews.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 2/26/23.
//

import SwiftUI
import _AuthenticationServices_SwiftUI

struct WelcomeCardViews: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var loginData = LoginViewModel()
    @State var selectedTab = 0
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            TabView(selection: $selectedTab) {
                OnboardView(image: "eye.fill", title: "Observe", description: "Select your school and see how crowded your dining hall, gym, and parking lots are")
                    .tag(0)
                OnboardView(image: "globe.americas.fill", title: "Going Out?", description: "Check out the map to find your next move")
                    .tag(1)
                
                if (selectedTab == 1 || selectedTab == 2) {
                    VStack {
                        OnboardView(image: "person.crop.circle.fill.badge.checkmark", title: "You're All Set!", description: "Tap 'Get Started' to begin your journey")
                            .tag(2)
                            
                        NavigationLink(
                                destination: MainView(),
                                            label: {
                                                Text("Get Started")
                                                        .foregroundColor(.white)
                                                        .padding()
                                                        .background(.teal)
                                                        .cornerRadius(8)
                                            })

                    }
                }
               
                    
                
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            
        }
    }
}

struct WelcomeCardViews_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeCardViews()
    }
}

//{
//    Text("Get Started")
//        .foregroundColor(.white)
//        .padding()
//        .background(.teal)
//        .cornerRadius(8)
//}
