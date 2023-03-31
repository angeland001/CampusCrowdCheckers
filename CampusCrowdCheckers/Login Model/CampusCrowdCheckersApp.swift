//
//  CampusCrowdCheckersApp.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/7/22.
//

import SwiftUI
import Firebase
import FirebaseCore
import FirebaseAuth

@main
struct CampusCrowdCheckersApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
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

class AppDelegate: NSObject,UIApplicationDelegate{
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        return true
    }
}

