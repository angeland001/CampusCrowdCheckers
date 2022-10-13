//
//  SplashScreenView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/13/22.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive{
                    ContentView()
                } else{
                    VStack{
                        VStack{
                            Image(systemName: "hare.fill")
                                .font(.system(size: 80)).foregroundColor(.blue)
                            Text("Campus Crowd Check")
                                .font(Font.custom("Baskerville-Bold", size: 26))
                        }
                        .scaleEffect(size)
                        .opacity(opacity)
                        .onAppear{
                            withAnimation(.easeIn(duration: 1.2)){
                                self.size = 0.9
                                self.opacity = 1.0
                            }
                        }
                    }
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                            self.isActive = true
                        }
                    }

                }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
