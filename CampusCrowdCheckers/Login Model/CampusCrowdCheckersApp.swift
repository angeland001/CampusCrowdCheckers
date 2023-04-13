//
//  CampusCrowdCheckersApp.swift
//  CampusCrowdCheckers
//
//  
//

import SwiftUI


@main
struct CampusCrowdCheckersApp: App {
    
    
    @StateObject private var vm = MapViewModel()
    @StateObject private var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                SplashScreenView()
                    .environmentObject(vm)
                    
                    
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)

            
            
        }
    }
}
