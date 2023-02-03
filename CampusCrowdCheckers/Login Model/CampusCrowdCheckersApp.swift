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
    var body: some Scene {
        WindowGroup {
            NavigationView {
                SplashScreenView()
                    .environmentObject(vm)
            }
        }
    }
}

class AppDelegate: NSObject,UIApplicationDelegate{
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        return true
    }
}

