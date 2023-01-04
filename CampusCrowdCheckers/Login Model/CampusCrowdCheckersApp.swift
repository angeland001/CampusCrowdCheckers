//
//  CampusCrowdCheckersApp.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/7/22.
//

import SwiftUI

@main
struct CampusCrowdCheckersApp: App {
 
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
